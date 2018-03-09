<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class QG extends CI_Controller {

	public function home(){
		$data['numc'] = $this->QuestionModel->selectAll()->num_rows();
		$data['numd'] = $this->DatasetModel->selectAll()->num_rows();
		$this->load->view('layout/header');
		$this->load->view('welcome',$data);
		$this->load->view('layout/footer');	
	}
	public function learn(){
		ini_set('memory_limit',"256M");		
		$train = $this->QuestionModel->selectAll(1000)->result_array();
		$test = $this->CandidateModel->selectAll()->result_array();
		foreach($test as $i){
			$min = 100;
			foreach($train as $j){
				if($this->Tools->LED($i['postext'],$j['postext']) < $min){
					$min = $this->Tools->LED($i['postext'],$j['postext']);
					$index = $j['id'];
				}
			}
			$this->CandidateModel->update($i['id'],['distance' => $min."-".$index]);
		}
	}

	public function remove(){
		$test = $this->CandidateModel->removeTag($this->CandidateModel->selectAll()->result_array());
	}

	public function show(){
		error_reporting(0);
		date_default_timezone_set('Asia/Jakarta');

		// $this->remove();
		// $this->learn();
		// var_dump($this->input->post());
		// $dataset = $this->DatasetModel->selectById(10)->result_array();
		
		$data  = $this->CandidateModel->selectAll()->result_array();
		$dataTrain = $this->QuestionModel->selectAll(1500)->result_array();
		
		$heuristic1 = $this->CandidateModel->heuristicUnderline($dataTrain);
			usort($heuristic1, function ($a, $b) {
				return $a['count'] < $b['count'];
			});
			include APPPATH.'views/layout/header.php';
			echo "<div class='right_col' role='main'>";
			echo "<div class='row'>";
			echo "<div class='xpanel'>";
			$no = 1;
			echo "<h2> Generated Questions </h2>";
			echo "<b>Date</b>&nbsp;: ".date("F j, Y, g:i a");
			echo "<br/>";  
			echo "<b>Number of Question</b>&nbsp;: ".count($this->input->post('berita'))*$this->input->post('num');
			echo "<br/>";
			$allKey = array();
			foreach($this->input->post('berita') as $berita){
				$i = 0;
				$cand = $this->CandidateModel->selectByIdd($berita)->result_array();
				usort($cand, function ($a, $b) {
					return explode("-",$a['distance'])[0] < explode("-",$a['distance'])[0];
				});
				// $this->Tools->pre_print_r($cand);
				while($i < $this->input->post('num')){
					$question = $cand[$i];
					$choosen = $this->CandidateModel->underlineCandidate($this->QuestionModel->selectById(explode("-",$cand[$i]['distance'])[1])->row_array(),$cand[$i],$heuristic1);
					$answer = $this->CandidateModel->generateDistracter($choosen);
					// $this->Tools->pre_print_r($choosen);
					// foreach($choosen as $w){
					// 	echo $w['text']."-";
					// }
					$words = explode(" ",$question['text']);
					echo $no.". ";
					foreach($words as $key => $word){
						if(array_key_exists($key,$answer['underline'])){
							if($answer['key']['index'] == $key){
								echo "<u style'color:red;'>".$this->CandidateModel->preProcessing($answer['underline'][$key]['text'])."</u>";
							}else{
								echo "<u>".$this->CandidateModel->preProcessing($answer['underline'][$key]['text'])."</u>";
							}
						}else{
							echo $this->CandidateModel->preProcessing($word);
						}
						if($key == count($words)-1){
							echo ".";
						}else{
							echo " ";
						}
					}

					$allKey[] = $this->CandidateModel->preProcessing($answer['key']['key']);
					echo "<br/>";
					$i++;
					$no++;
				}

			}
			echo "<br/>";
			echo "<b>Answer Keys : </b><br/>";
			foreach($allKey as $key=>$j){
				echo ($key+1).". ".$j."<br/>";
			}
			echo "</div></div></div>";
			include APPPATH.'views/layout/footer.php';
			// $this->load->view('layout/footer');

	}


	public function allCandidate(){
		$data['all'] = $this->CandidateModel->selectJoin()->result_array();
		$this->load->view('layout/header');
		$this->load->view('candidate',$data);
		$this->load->view('layout/footer');
	}
	public function removeTag($data){
		$temp = explode(" ",$data);
		foreach($temp as $key=>$j){
			if($j == "POS" || $j == '``' || $j == "''" || $j == ':' || $j == ","){
				array_splice($temp,$key,1);
			}
		}
		return implode(" ",$temp);
		
	}		
	public function featureExtract($kalimat){
		error_reporting(0);
		$numPOS = [
		'CC' => 1,
		'CD' => 2,
		'DT' => 3,
		'EX' => 4,
		'FW' => 5,
		'IN' => 6,
		'JJ' => 7,
		'JJR' => 8,
		'JJS' => 9,
		'LS' => 10,
		'MD' => 11,
		'NN' => 12,
		'NNS' => 13,
		'NNP' => 14,
		'NNPS' => 15,
		'PDT' => 16,
		'POS' => 17,
		'PRP' => 18,
		'PRP$' => 19,
		'RB' => 20,
		'RBR' => 21,
		'RBS' => 22,
		'RP' => 23,
		'SYM' => 24,
		'TO' => 25,
		'UH' => 26,
		'VB' => 27,
		'VBD' => 28,
		'VBG' => 29,
		'VBN' => 30,
		'VBP' => 31,
		'VBZ' => 32,
		'WDT' => 33,
		'WP' => 34,
		'WP$' => 35,
		'WRB' => 36,
		'0' => 0
				];		
		$pos = $this->stanford->posTag($kalimat);
		$pos = $this->removeTag($pos);
		$posbagi = explode(" ",$pos);
		$kata = explode(" ",$kalimat);
		$counter = 0;
		foreach($kata as $key=>$row){
			$dt[$counter][0] = $numPOS[$posbagi[$key]] * 2.86 - 1;
 			if($key == 0){
 				$dt[$counter][1] = '0';
 			}else{
 				$dt[$counter][1] = $posbagi[$key-1];
 			}
 			if($dt[$counter][1] == '0'){
 				$dt[$counter][1] = 0;
 			}else{
 				$dt[$counter][1] = $numPOS[$dt[$counter][1]] * 2.86 - 1;
 			}
 			if($key == count($kata)-1){
 				$dt[$counter][2] = '0';
 			}else{
 				$dt[$counter][2] = $posbagi[$key+1];
 			}
 			$dt[$counter][2] = $numPOS[$dt[$counter][2]] * 2.86 - 1; 			
 			$dt[$counter][3] = $key;
 			$dt[$counter][4] = count($kata);
 			$cword = 0;
 			foreach($kata as $row2){
 				if($row2 == $row){
 					$cword++;
 				}
 			}
 			$dt[$counter][5] = $cword;
 			$counter++;			
		}
 		return $dt;
	}
	public function generateSC( ){
		$post = $this->input->post('berita');
		$numPOS = [
			'CC' => 1,
			'CD' => 2,
			'DT' => 3,
			'EX' => 4,
			'FW' => 5,
			'IN' => 6,
			'JJ' => 7,
			'JJR' => 8,
			'JJS' => 9,
			'LS' => 10,
			'MD' => 11,
			'NN' => 12,
			'NNS' => 13,
			'NNP' => 14,
			'NNPS' => 15,
			'PDT' => 16,
			'POS' => 17,
			'PRP' => 18,
			'PRP$' => 19,
			'RB' => 20,
			'RBR' => 21,
			'RBS' => 22,
			'RP' => 23,
			'SYM' => 24,
			'TO' => 25,
			'UH' => 26,
			'VB' => 27,
			'VBD' => 28,
			'VBG' => 29,
			'VBN' => 30,
			'VBP' => 31,
			'VBZ' => 32,
			'WDT' => 33,
			'WP' => 34,
			'WP$' => 35,
			'WRB' => 36,
			'0' => 0
					];
		$counter = 0;
		foreach($post as $values){
			// var_dump($values);
			$row = $this->DatasetModel->selectById($values)->row_array();
			// var_dump($row);
			$corpus = $this->DatasetModel->sentenceSeparation(file_get_contents(FCPATH.'datasets/'.$row['name']));;
			unset($corpus[count($corpus)-1]); // BUG
			foreach($corpus as $row){
				$dataTest[$counter] = $this->featureExtract($row);
				$dataCorpus[$counter] = explode(" ",$row);
				$dataPOS[$counter] = explode(" ",$this->stanford->posTag($row));
				$this->removeTag($dataPOS[$counter]);
				$counter++;
			}
		}

		// var_dump($this->input->post());
		$dataSelect = $this->KoleksiModel->selectAll()->result_array();
		$counter = 0;
		foreach($dataSelect as $key=>$values){
			$dataTrain[$counter][0] = $numPOS[$values['pos']] * 2.86 - 1;	
			$dataTrain[$counter][1] = $numPOS[$values['prev_pos']] * 2.86 - 1;	
			$dataTrain[$counter][2] = $numPOS[$values['next_pos']] * 2.86 - 1;	
			$dataTrain[$counter][3] = $values['position'];	
			$dataTrain[$counter][4] = $values['sentence'];	
			$dataTrain[$counter][5] = $values['word_length'];	
			$dataTrain[$counter][6] = 0;
			$dataTrain[$counter][7] = $values['target'];
			$counter++;	
 		}
		$dictionary['IN'] = ['of','in','by','for','without','with','that','on','from','as','some','abord','about','above','over','after','against','along','alongside','among','around','as far as','at', 'behind','beside','besides','below','beneath','between','beyond','during','except','into','like','since','till'.'but'];
		$dictionary['CC'] = ['of','in','by','for','without','with','that','on','from','as','some','abord','about','above','over','after','against','along','alongside','among','around','as far as','at', 'behind','beside','besides','below','beneath','between','beyond','during','except','into','like','since','till'.'but'];		
		$dictionary['TO'] = ['of','in','by','for','without','with','that','on','from','as','some','abord','about','above','over','after','against','along','alongside','among','around','as far as','at', 'behind','beside','besides','below','beneath','between','beyond','during','except','into','like','since','till'];
		$dictionary['DT'] = ['the','an','a'];
		$dictionary['PRP'] = ['i'=>'mine','you'=>'yours','he'=>'his','she'=>'hers','it'=>'its','we'=>'ours','you'=>'yours','they'=>'theirs','her'=>'she','his'=>'he'];
		$dictionary['PRP$'] = ['mine'=>'i','yours'=>'you','his'=>'he','hers'=>'she','its'=>'it','ours'=>'we','yours'=>'you','theirs'=>'they'];
		$dictionary['MD'] = ['can'=>'could','may'=>'might','shall'=>'should','will'=>'would', 'must'=>'Ought to', 'could'=>'can','might'=>'may','should'=>'shall','would'=>'will','ought to'=>'must'];
		$else = ['VB','VBD','VBG','VBZ','VBN','VBP'];

 		echo "SOAL SENTENCE COMPLETION: <br/>";
 		foreach($dataTest as $idx =>$baris){
 			echo ($idx+1).". ";	
 			$stats = 0;
	 		echo "<pre>";
 			// var_dump($dataPOS);
	 		// print_r($option);
	 		echo "</pre>";
	 		foreach($baris as $key => $row){
	 			// var_dump($row);
	 			$result = $this->knn->exec($dataTrain,$row,3);	
	 			if($result == 1){
 					if($stats != 1){
		 				echo "......";
		 				// var_dump($dataPOS[$idx][$key]);

	 					// var_dump($dataPOS[$idx][$key]);
	 					// var_dump( $dictionary[$dataPOS[$idx][$key]][$rand]);
 						var_dump($stats);
		 				for ($i=0; $i < 3; $i++) { 
		 					$rand = random_int(0,count($dictionary[$dataPOS[$idx][$key]]));
		 					$option[$idx][] = $dictionary[$dataPOS[$idx][$key]][$rand];
		 				}
		 				$option[$idx][] = $dataCorpus[$idx][$key];
		 				shuffle($option);
		 				$stats = 1;
 					}else{
 						echo $dataCorpus[$idx][$key]." ";

 					}
	 			}else{
	 				echo $dataCorpus[$idx][$key]." ";
	 			}
	 		}
	 		echo "<br/>";
	 		$abjad = ['A','B','C','D'];
	 		for ($i=0; $i < 4; $i++) { 
	 			echo $abjad[$i].". ".$option[$idx][$i].'<br/>';
	 		}
 		}



	}
	public function generate_error(){
		$data['news'] = $this->DatasetModel->selectAll()->result_array();
		$this->load->view('layout/header');
		$this->load->view('error-ident',$data);
		$this->load->view('layout/footer');	
	}
	public function generate_completion(){
		$data['news'] = $this->DatasetModel->selectAll()->result_array();
		$this->load->view('layout/header');
		$this->load->view('completion',$data);
		$this->load->view('layout/footer');	
	}

}

?>

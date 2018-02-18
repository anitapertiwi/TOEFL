c<?php
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
	public function generate(){
		$data['news'] = $this->DatasetModel->selectAll()->result_array();
		$this->load->view('layout/header');
		$this->load->view('home',$data);
		$this->load->view('layout/footer');	
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

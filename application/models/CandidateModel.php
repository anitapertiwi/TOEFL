<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CandidateModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_candidate";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}
	public function selectJoin($from=0,$offset=0){
		$this->db->select('tb_dataset.name,tb_candidate.*');
		$this->db->from($this->tableName);
		$this->db->join('tb_dataset','tb_dataset.id = tb_candidate.idd');
		$this->db->limit($from,$offset);

		return $this->db->get();
	}
	public function selectById($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('id',$id);

		return $this->db->get();
	}
	public function selectByIdd($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('idd',$id);

		return $this->db->get();
	}	
	
	public function check($text){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('text',$text);

		return $this->db->get();
		// if($this->db->get() != NULL){
		// 	return true;
		// }else{
		// 	return false;
		// }
	}
	public function direct($text){
		$temp = explode(" ",$text);
		foreach($temp as $row){
			if(strpos("x".$row,'"') !== false){
					return true;
				// if(strpos("x".$row,'?' !== false)){
				// }else{
				// 	return false;
				// }
			}else{
				return false;
			}
		}
	}
	public function selectPostext($from=0, $offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('postext',NULL);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}
	public function insert($data){
		$this->db->insert($this->tableName,$data);
	}

	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('id',$id);
		return $this->db->update($this->tableName);
	}

	public function preProcessing($text){
		// $text = preg_replace("/[^\w]/"," ",$text);
		$text = str_replace(['"',',',':','/','?','/','[',']','-','|','(',')','$','%'],'',$text);
		return $text;
	}

	public function heuristicUnderline($dataTrain){
		$indexes = array();
		foreach($dataTrain as $row){
			$expos = explode(" ",$row['postext']);
			$temp = explode(",",$row['underline']);	
			foreach($temp as $subrow){
				$temp2 = explode("-",$subrow);
				foreach($temp2 as $subsub){
					// var_dump($row['id']);
					// var_dump($subsub);
					if(array_key_exists($expos[$subsub],$indexes)){
						$indexes[$expos[$subsub]]['count'] += 1;
					}else{
						$indexes[$expos[$subsub]] = array(
							'count' => 1,
							'key' => $expos[$subsub]
						);
					}
				}
			}
		}
			// $this->Tools->pre_print_r($indexes);
		
		return $indexes;
		// $this->Tools->pre_print_r($indexes);

	}
	public function underlineCandidate($train,$candidate,$heuristic){
		$textTrain = explode(" ",$train['text']);
		$posTrain = explode(" ",$train['postext']);
		$ulTrain = explode(",",$train['underline']);
		$cPosTest = explode(" ",$candidate['postext']);
		$cTextTest = explode(" ",$candidate['text']);
		
		// print_r($ulTrain);
		echo "<br/>";
		$choosen = array();
		foreach($ulTrain as $row){
			$row = explode("-",$row)[0];
			$stats = 0;
			foreach($cPosTest as $key=>$row2){
				if($posTrain[$row] == $row2 && !array_key_exists($key,$choosen)){
					// var_dump("ID".$candidate['id']);
					$choosen[$key] = Array(
						'text' => $cTextTest[$key],
						'pos' => $row2,
						'index' => $key
					);
					$stats = 1;
					break;
				}
			}
			if($stats == 0){
			// var_dump($heuristic);
				foreach($heuristic as $j){
					foreach($cPosTest as $key=>$row2){
						if($j['key'] == $row2 && !array_key_exists($key,$choosen)){
							$choosen[$key] = Array(
								'text' => $this->preProcessing($cTextTest[$key]),
								'pos' => $j['key'],
								'index' => $key
							);
							$stats = 1;
							break;
						}
					}
					if($stats == 1){
						break;
					}
				}
			}
		}

		return $choosen;
	}
	public function get_http_response_code($url) {
	    $headers = get_headers($url);
	    return substr($headers[0], 9, 3);
	}
	public function generateDistracter($choosen){
		// print_r($choosen);
		$dictionary['IN'] = ['of','in','by','for','without','with','that','on','from','as','some','abord','about','above','over','after','against','along','alongside','among','around','as far as','at', 'behind','beside','besides','below','beneath','between','beyond','during','except','into','like','since','till'];
		$dictionary['TO'] = ['of','in','by','for','without','with','that','on','from','as','some','abord','about','above','over','after','against','along','alongside','among','around','as far as','at', 'behind','beside','besides','below','beneath','between','beyond','during','except','into','like','since','till'];
		$dictionary['DT'] = ['the','an','a'];
		$dictionary['PRP'] = ['i'=>'mine','you'=>'yours','he'=>'his','she'=>'hers','it'=>'its','we'=>'ours','you'=>'yours','they'=>'theirs','her'=>'she','his'=>'he'];
		$dictionary['PRP$'] = ['mine'=>'i','yours'=>'you','his'=>'he','hers'=>'she','its'=>'it','ours'=>'we','yours'=>'you','theirs'=>'they'];
		$dictionary['MD'] = ['can'=>'could','may'=>'might','shall'=>'should','will'=>'would', 'must'=>'Ought to', 'could'=>'can','might'=>'may','should'=>'shall','would'=>'will','ought to'=>'must'];
		$else = ['VB','VBD','VBG','VBZ','VBN','VBP'];
		
		$gatcha	= 0; //stop condition
		while($gatcha != 1){
			$rand = array_rand($choosen);
			$key = $choosen[$rand]['text'];
			// echo $choosen[$rand]['pos'];
			if(array_key_exists($choosen[$rand]['pos'],$dictionary)){
				if($choosen[$rand]['pos'] == 'IN' || $choosen[$rand]['pos'] == 'TO' || $choosen[$rand]['pos'] == 'DT' ){
					$stats = 0;
					while($stats == 0){
						$distracter = $dictionary[$choosen[$rand]['pos']][array_rand($dictionary[$choosen[$rand]['pos']])];
						if(strtolower($distracter) != strtolower($choosen[$rand]['text'])){
							$stats = 1;
							$gatcha = 1;
						}
					}
				}else{
					if(isset($dictionary[$choosen[$rand]['pos']][strtolower($choosen[$rand]['text'])])){
						$distracter = $dictionary[$choosen[$rand]['pos']][strtolower($choosen[$rand]['text'])];
						$gatcha = 1;
					}
				}
			}else{
				if($this->get_http_response_code("http://api.ultralingua.com/api/conjugations/eng/".$this->preProcessing($choosen[$rand]['text'])) != '404'){
				$json = json_decode(file_get_contents("http://api.ultralingua.com/api/conjugations/eng/".$this->preProcessing($choosen[$rand]['text'])));
					$same = 0;
					while($same == 0){
						$distracter = $json[random_int(0,25)]->surfaceform;
						if($distracter != $choosen[$rand]['text']){
							$same = 1;
							$gatcha = 1;
						}
					}
				}
			}
		}
		$choosen[$rand]['text'] = $distracter;
		return ['underline' => $choosen,'key' => ['key'=> $key, 'index'=>$rand]];
	}

	public function removeTag($data){
		foreach($data as $index=>$i){
			$temp = explode(" ",$i['postext']);
			foreach($temp as $key=>$j){
				if($j == "POS" || $j == '``' || $j == "''" || $j == ':'){
					array_splice($temp,$key,1);
				}
			}
			$this->update($i['id'],['postext'=>implode(" ",$temp)]);
		}
	}
	public function removeTagRet($data){ 
			$temp = explode(" ",$data);
			foreach($temp as $key=>$j){
				if($j == "POS" || $j == '``' || $j == "''" || $j == ':'){
					array_splice($temp,$key,1);
				}
			}
			return $data;
		
	}	


}

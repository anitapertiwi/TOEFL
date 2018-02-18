<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Question extends CI_Controller {

	public function index(){
		$data = $this->QuestionModel->selectAll()->result_array();
		$data = $this->QuestionModel->preProcessing($data);
		// $this->Tools->pre_print_r($data);
		for($i=0;$i<count($data);$i++){
			if($data[$i]['postext'] == NULL){
				$update['postext'] = $this->stanford->posTag($data[$i]['text']);
				// var_dump($update);
				$this->QuestionModel->update($data[$i]['id'],$update);
			}
		}
	}

	public function fromTxt(){
		$test = file_get_contents(FCPATH.'datasets/collection/anitabaru.txt');
		$test = explode("@@",$test);
		$this->Tools->pre_print_r($test);
		var_dump($test);
		for($i=0;$i<count($test);$i++){
			// if(count(explode(' ',$this->QuestionModel->preTxt($test[$i]))) > 11){
			// if($this->QuestionModel->check($this->QuestionModel->preTxt($test[$i]))){
			$insert['underline'] = $this->QuestionModel->getUnderline($test[$i])['underline'];
			// $insert['answer'] = $this->QuestionModel->getUnderline($test[$i])['answer'];
			$insert['answer'] = NULL;
			$insert['text'] = $this->QuestionModel->preTxt($test[$i]);
			$insert['postext'] = $this->stanford->posTag($this->QuestionModel->preComma($this->QuestionModel->preTxt($test[$i])));
			
			var_dump($insert);
			echo "<br/>";

			$this->QuestionModel->insert($insert);
			// }
			// }
		}		
		// var_dump($test);		
	}
	public function allQuestion(){
		$data['all'] = $this->QuestionModel->selectAll()->result_array();
		$this->load->view('layout/header');
		$this->load->view('collection',$data);
		$this->load->view('layout/footer');		
	}
	public function eiQuestion(){
		$data['all'] = $this->QuestionModel->selectAll()->result_array();
		$this->load->view('layout/header');
		$this->load->view('collection-ei',$data);
		$this->load->view('layout/footer');		
	}
	public function scQuestion(){
		$data['all'] = $this->QuestionModel->selectAll()->result_array();
		$this->load->view('layout/header');
		$this->load->view('collection-sc',$data);
		$this->load->view('layout/footer');		
	}
	public function formQuestion($edit = NULL){
		if ($this->input->post() != NULL) {
			$data = $this->input->post();
			if(isset($data['id'])){
				$id = $data['id'];
				unset($data['id']);
				$this->QuestionModel->update($id,$data);
			}else{
				$this->QuestionModel->insert($data);
				$this->index();
			}
			redirect('Question/allQuestion');
		}else{
			if(!is_null($edit)){
				$data['row'] = $this->QuestionModel->selectById($edit)->row_array();
			}
			var_dump($this->input->post());
			$this->load->view('layout/header');
			$this->load->view('addq',$data);
			$this->load->view('layout/footer');	
		}	
	}
	public function delete($id){
		$this->QuestionModel->delete($id);
		redirect('Question/allQuestion');
	}
	public function makeDT(){
		error_reporting(0);
		$data = $this->CandidateModel->selectAll()->result_array();
		$dataTrain = $this->QuestionModel->selectAll()->result_array();		
		$heuristic1 = $this->CandidateModel->heuristicUnderline($dataTrain);
		foreach($data as $row){
				var_dump($row);
			$choosen = $this->CandidateModel->underlineCandidate($this->QuestionModel->selectById(explode("-",$row['distance'])[1])->row_array(),$row,$heuristic1);		
			$count = 0;
			$arr = array();
			foreach($choosen as $key=>$row2){
				$arr[] = $key;
				$count++;
			}
			if($count == 4){
				$insert['text'] = $row['text'];
				$insert['postext'] = $row['postext'];
				$insert['underline'] = implode(",",$arr);
				$insert['answer'] = NULL;
				$check  = $this->QuestionModel->insert($insert);
			}
			echo "<br/>";
		}
	}
	public function debug(){
		$data['all'] = $this->QuestionModel->selectAll()->result_array();
		foreach($data['all'] as $row){
			$words = explode(" ",$row['text']);
			$index = explode(",",$row['underline']);
			foreach($words as $key => $word){
				$count = 0;
				foreach($index as $j){
					if($key == $j){
						echo "<u>".$word."</u>";
						break;
					}else{
						$count++;
					}
				}
				if($count == 4){
						echo $word;
				}
				echo " ";
			}
			echo "</br>";
		}		
	}


}

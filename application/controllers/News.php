<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {

	public function getc($id){
		$data = $this->DatasetModel->selectById($id)->result_array();
		foreach($data as $row){
			$corpus = $this->DatasetModel->sentenceSeparation(file_get_contents(FCPATH.'datasets/'.$row['name']));
			unset($corpus[count($corpus)-1]);
			$count = 0;
			foreach($corpus as $rr){
				$insert['idd'] = $row['id'];
				$insert['text'] = $rr;
				$this->CandidateModel->insert($insert);
				$count++;
				// $rand = random_int(0, count($corpus)-1);
				// 		// var_dump($corpus[$key]);
				// if(count(explode(" ",$corpus[$rand])) >= 7){
				// 		$this->CandidateModel->insert(['idd' => $row['id'], 'text' => $corpus[$rand]]);
				// 		$count++;
				// }
				if($count == 50){
					break;
				}
			}
		}
	}
	public function deb(){
		$this->CandidateModel->insert(['idd' => 1, 'text' => "ewe enak hehe"]);
	}
	public function index2(){
		// $data = $this->DatasetModel->selectAll(10)->result_array();
		$corpus = $this->DatasetModel->sentenceSeparation(file_get_contents(FCPATH.'datasets/bbc.txt'));
		foreach($corpus as $row){
		var_dump($this->CandidateModel->preProcessing($row));
			if(count(explode(" ",$row)) >= 7){			
				$this->CandidateModel->insert(['idd' => 17, 'text' => $row]);
			}
		}
		
	}	
	public function posTag(){
		ini_set('max_execution_time',0);

		$data = $this->CandidateModel->selectPostext()->result_array();
		// var_dump($data);
		foreach($data as $row){
			// $this->Tools->pre_print_r($this->CandidateModel->preProcessing($row['text']));
			$update['postext'] = $this->stanford->posTag($this->CandidateModel->preProcessing($row['text']));
			$this->CandidateModel->update($row['id'],$update);
		}
	}
	public function allNews(){
		$data['all'] = $this->DatasetModel->selectAll()->result_array();
		$this->load->view('layout/header');
		$this->load->view('news',$data);
		$this->load->view('layout/footer');		
	}
	public function delete($id){
		$temp = $this->DatasetModel->selectById($id)->row_array();
		unlink('./datasets/'.$temp['name']);
		$this->DatasetModel->delete($id);

		redirect('News/allNEws');
	}

	public function formNews(){
		if ($this->input->post('sub')) {
			$config['upload_path']          = './datasets/';
			$config['allowed_types']        = 'txt';
			$config['max_size']             = 0;

			$this->load->library('upload', $config);

			if (!$this->upload->do_upload('corpus')){
				$error = array('error' => $this->upload->display_errors());
				var_dump($error);
			}else{
				$data = $this->upload->data();
				$insert['name'] = $data['orig_name'];
				$insert['size'] = $data['file_size'];
				$id = $this->DatasetModel->insert($insert);
				$this->getc($id);
				$this->posTag();
				// $this->QG->remove();
				// $this->QG->learn();

			}
			redirect('News/allNews');
		}else{
			$this->load->view('layout/header');
			$this->load->view('addd');
			$this->load->view('layout/footer');	
		}
	}

	public function debug(){
		// $r1 = "DT NN VBP DT TO JJ IN PRP TO VB IN DT NN CC RB PRP MD VB RB";
		// $r2 = "PRP VBD DT NN MD VB JJ NNS IN NN CC NN";

		// var_dump($this->Tools->LED($r1,$r2));
		var_dump();

/*		$data = $this->DatasetModel->selectAll(1)->result_array();
		foreach($data as $row){
			$corpus = $this->DatasetModel->sentenceSeparation(file_get_contents(FCPATH.'datasets/abcau.txt'));
			var_dump($this->CandidateModel->direct($corpus[1]));
			// foreach($corpus as $sentence){
				// if(count(explode(" ",$sentence)) >= 7){
			// 		if($this->CandidateModel->check($sentence)){
			// 			// var_dump($this->CandidateModel->check($sentence));
			// 			$this->CandidateModel->insert(['idd' => $row['id'], 'text' => $sentence]);
			// 		}
			// 	}
			// }
		}*/
	}

}

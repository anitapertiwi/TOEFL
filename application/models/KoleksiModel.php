<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class KoleksiModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_koleksi";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}

	public function selectById($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('id',$id);

		return $this->db->get();
	}

	public function selectByTarget($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('target',$id);

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
	public function delete($id){
		$this->db->where('id',$id);
		$this->db->delete($this->tableName);
	}	
	public function preProcessing($data){
		for($i=0;$i<count($data);$i++){
			$data[$i]['text'] = preg_replace("/[^\w]/"," ",$data[$i]['text']);
		}
		return $data;
	}
	public function check($text){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('text',$text);

		if($this->db->get() != NULL){
			return TRUE;
		}else{
			return FALSE;
		}
	}
	public function preTxt($data){
	$data = str_replace(["_","$","*","."],"",$data);

		return $data;
	}

	public function getUnderline($data){
		$data = explode(" ",$data);
		$answer = NULL;
		foreach($data as $key => $i){
			if(substr($i,-1) == "_"){
				if(substr($i, 0,1) == "*")
					$answer = $key;				
				$ul[] = $key;
			}
		}
		return ['underline' => implode(",",$ul),'answer' => $answer];
	}

	public function preComma($data){
			// $data = preg_replace("/[^\w]/"," ",$data);
		$data = str_replace(",","",$data);
		
		return $data;	
	}

}

sse<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DatasetModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_dataset";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		// $this->db->order_by('id','DESC');
		$this->db->limit($from,$offset);

		return $this->db->get();
	}

	public function selectById($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('id',$id);

		return $this->db->get();
	}
	
	public function insert($data){
		$this->db->insert($this->tableName,$data);

		return $this->db->insert_id();
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


	public function sentenceSeparation($corpus){
		$corpus = str_replace('."', '".', $corpus); // Replaces all spaces with hyphens.
		$corpus = preg_split('/\./',$corpus);
		$corpus = preg_replace('/\s+/', ' ',$corpus); //
		for($i=0;$i<count($corpus);$i++){
			$corpus[$i] = trim($corpus[$i]," ");
		}
		return $corpus;
		// return preg_split('/(?<=[.?!;:])\s+/', $corpus, -1, PREG_SPLIT_NO_EMPTY);;
	}
}


<?php defined('BASEPATH') OR exit('No direct script access allowed');

require_once(dirname(__FILE__)) . '/php-stanford-corenlp-adapter/bootstrap.php';

class Stanford {

	public function posTag($sentences){
		$coreNLP = new CorenlpAdapter();
		$coreNLP->getOutput($sentences);
		$data = $coreNLP->getWordValues($coreNLP->trees[0]);

		foreach($data as $row){
			$ret[] = $row['pos'];
		}   
		return implode(" ",$ret);
	}
}


 ?>
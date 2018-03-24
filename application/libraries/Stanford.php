<?php defined('BASEPATH') OR exit('No direct script access allowed');

require_once(dirname(__FILE__)) . '/php-stanford-corenlp-adapter/bootstrap.php';
// require_once(dirname(__FILE__)) . '/StanfordTagger/Stanford_POS_Tagger.php';
require_once(dirname(__FILE__)) . '/PHP-Stanford-NLP-master/autoload.php';
// require_once(dirname(__FILE__)) . '/StanfordTagger/POSTagger.php';

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
	public function posTagz($sentence){

		$path = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'stanford-postagger-2017-06-09';
		// echo($path);
		$pos = new \StanfordNLP\POSTagger(
		  $path . DIRECTORY_SEPARATOR . 'english-left3words-distsim.tagger',
		  $path . DIRECTORY_SEPARATOR . 'stanford-postagger.jar'
		);
		// $x = escapeshellcmd('java --version');
		// var_dump($x);
		// $pos->setDebug(true);
		// var_dump($pos);
		$result = $pos->tag(explode(' ', $sentence));
		// $results = $pos->batchTag([explode(' ', "What does the fox say?"), explode(' ', "What does the parrot say?")]);
		$str = "";
		foreach($result[0] as $row){
			// var_dump($row);
			$arstr[] = $row[1]; 
		}
		// echo "<pre>";
		// print_r(implode(" ",$arstr));
		// echo "</pre>";
		// var_dump($stf);
		// var_dump($stf->array_tag("The cow jumped over the moon and the dish ran away with the spoon."));
		return implode(" ",$arstr);
	}
}


 ?>
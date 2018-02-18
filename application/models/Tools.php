<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tools extends CI_Model {
	
	public function pre_print_r($data){
		echo "<pre>";
		print_r($data);
		echo "</pre>";
	}

	public function LED($pattern, $text){
		$pattern = explode(" ",$pattern);
		$l1 = count($pattern)+1;
		$news = Array();
		$tl2 = explode(" ",$text);
		foreach($tl2 as $pos){
			if($pos != "''" && $pos != "``" && $pos != ":" && $pos != "POS"){
				array_push($news,$pos);
			}
		}
		$l2 = count($news)+1;
		// var_dump($l2);
		$matrix = Array();
		/*Filling first row*/
		for($i=0;$i<1;$i++){
			for($j=0;$j<$l2;$j++){
				$matrix[$i][$j] = $j;
			}
		}
		/*Filling first column*/
		for($i=0;$i<1;$i++){
			for($j=0;$j<$l1;$j++){
				$matrix[$j][$i] = $j;
			}
		}
		/*
		MED PseudoCode
		1. if char(ROW) != char(Column) 
		Matrix[i,j]  = min(Matrix[i-1,j],matrix[i,j-1],matrix[i-1,j-1]) + 1

		2. if char(ROW) = char(Column)
		Matrix[i,j] = matrix[i-1,j-1]; 
		 */
		for($i=1;$i<$l1;$i++){
			for($j=1;$j<$l2;$j++){
				$temp = min([$matrix[$i-1][$j-1],$matrix[$i-1][$j],$matrix[$i][$j-1]]);
				if($temp == $matrix[$i-1][$j-1]){
					if($pattern[$i-1] == $news[$j-1]){
						$matrix[$i][$j] = $temp + 0;
					}else{
						$matrix[$i][$j] = $temp + 1;
					}
				}else{
					$matrix[$i][$j] = $temp + 1;
				}
			}
		}
		// for($i=0;$i<$l1;$i++){
		// 	for($j=0;$j<$l2;$j++){
		// 		echo $matrix[$i][$j]."--";
		// 	}
		// 	echo "<br/>";
		// }

		return $matrix[$l1-1][$l2-1];
	}
}

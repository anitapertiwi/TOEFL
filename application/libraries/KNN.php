<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	class Knn {
		private $data_train;
		private $data_test;

		public function __construct() {

		}

		/* FUNGSI GET SET DISINI . . . */ 
		public function setDataTrain($data) {
			$this->data_train = $data;
		}
		public function getDataTrain() {
			return $this->data_train;
		}

		public function setDataTest($data) {
			$this->data_test = $data;
		}
		public function getDataTest() {
			return $this->data_test;
		}

		/* NORMALISASI 3 KOLOM AWAL */
		public function normalize($data_train, $data_test) {
			// Ubah dulu data train
			foreach ($data_train as $key => $value) { // loop utk setiap row
				for ($i = 0; $i < 3; $i++) { // loop untuk index
					$data_train[$key][$i] = ($data_train[$key][$i] * 2.86) - 1;
				}
			}

			// Ubah dulu data test
			// karena data test hanya 1 row maka loop langsung ke index
			for ($i = 0; $i < 3; $i++) {
				$data_test[$i] = $data_test[$i] * 2.86 - 1;
			}

			// wrap result in new array
			$result[] = $data_train;
			$result[] = $data_test;

			return $result;
		}

		/* PERHITUNGAN EUCLIDEAN */
		public function euclideanCalc($data_train, $data_test) {
			foreach ($data_train as $key => $values) { // loop as row
				$values_sum = 0;

				for ($i = 0; $i < count($data_test); $i++) { // loop as col
	                // http://en.wikipedia.org/wiki/Euclidean_distance
	         		// var_dump($values[$i]);
	         		// var_dump($data_test[$i]);
					$values_sum += pow(($values[$i] - $data_test[$i]), 2);
				}
				$values_sum = sqrt($values_sum);

				array_unshift($data_train[$key], $values_sum); // tambah data di index pertama per row
			}

			return $data_train; // return data train yang sudah diupdate
		}

		/* PROSES */
		public function exec($dataTrain,$dataTest,$k) {
			// // --------- Normalisasi ---------
			// $resultNormalize = $this->normalize($this->getDataTrain(), $this->getDataTest()); // get result dulu
			// // set data yang terupdate
			// $this->setDataTrain($resultNormalize[0]);
			// $this->setDataTest($resultNormalize[1]);

			// --------- GET DISTANCE ---------
			$distance = $this->euclideanCalc($dataTrain, $dataTest);

			sort($distance);

			for ($i=0; $i < $k; $i++) { 
				$result[] = $distance[$i];
			}

			//  --------- hitung true and false --------- 
			
			// counter
			$false = 0;
			$true = 0;

			foreach ($result as $key => $value) { // loop sebanyak k
				if ($value[8] == 1) { // kalau true
					$true++;
				} else { // kalau false
					$false++;
				}
			}

			//  --------- cek mana yang lebih banyak --------- 
			if ($false > $true) {
				return 0;
			} else {
				return 1;
			}
		}
	}

	// $test = new KNN(); // Instansiasi Objek KNN

	// /* INIT DATA */
	// $data =  [
 //                [4.72,0,16.16,1,14,1,0,0],
	// 			[16.16,4.72,7.58,2,14,1,0,0],
	// 			[7.58,16.16,61.92,3,14,1,0,0],
	// 			[61.92,7.58,19.02,4,14,1,0,0],
	// 			[19.02,61.92,19.02,5,14,1,0,0],
	// 			[19.02,19.02,36.18,6,14,1,0,0],
	// 			[36.18,19.02,90.52,7,14,1,0,0],
	// 			[90.52,36.18,39.04,8,14,1,0,0],
	// 			[39.04,90.52,50.48,9,14,1,0,0],
	// 			[50.48,39.04,90.52,10,14,1,0,0],
	// 			[90.52,50.48,84.8,11,14,1,0,0],
	// 			[84.8,90.52,56.2,12,14,1,0,0],
	// 			[56.2,84.8,84.8,13,14,1,0,1],
	// 			[84.8,56.2,0,14,14,1,0,0],
	// 			[7.58,0,36.18,1,14,1,0,0],
	// 			[36.18,7.58,33.32,2,14,1,0,0],
	// 			[33.32,36.18,90.52,3,14,1,0,0],
	// 			[90.52,33.32,16.16,4,14,1,0,0],
	// 			[16.16,90.52,7.58,5,14,1,0,0],
	// 			[7.58,16.16,19.02,6,14,1,0,0],
	// 			[19.02,7.58,33.32,7,14,1,0,1],
	// 			[33.32,19.02,36.18,8,14,1,0,0],
	// 			[36.18,33.32,56.2,9,14,1,0,0],
	// 			[56.2,36.18,87.66,10,14,1,0,0],
	// 			[87.66,56.2,81.94,11,14,1,0,0],
	// 			[81.94,87.66,53.34,12,14,1,0,0],
	// 			[53.34,81.94,33.32,13,14,1,0,0],
	// 			[33.32,53.34,0,14,14,1,0,0],
	// 			[36.18,0,84.8,1,23,1,0,0],
	// 			[84.8,36.18,16.16,2,23,1,0,0],
	// 			[16.16,84.8,7.58,3,23,1,0,0],
	// 			[7.58,16.16,19.02,4,23,1,0,0],
	// 			[19.02,7.58,4.72,5,23,1,0,0],
	// 			[4.72,19.02,36.18,6,23,1,0,0],
	// 			[36.18,4.72,87.66,7,23,1,0,0],
	// 			[87.66,36.18,84.8,8,23,1,0,0],
	// 			[84.8,87.66,16.16,9,23,1,0,0],
	// 			[16.16,84.8,36.18,10,23,1,0,0],
	// 			[36.18,16.16,56.2,11,23,1,0,0],
	// 			[56.2,36.18,19.02,12,23,1,0,1],
	// 			[19.02,56.2,36.18,13,23,1,0,0],
	// 			[36.18,19.02,16.16,14,23,1,0,0],
	// 			[16.16,36.18,7.58,15,23,1,0,0],
	// 			[7.58,16.16,33.32,16,23,1,0,0],
	// 			[33.32,7.58,16.16,17,23,1,0,0],
	// 			[16.16,33.32,4.72,18,23,2,0,0],
	// 			[4.72,16.16,33.32,19,23,1,0,0],
	// 			[33.32,4.72,16.16,20,23,1,0,0],
	// 			[16.16,33.32,36.18,21,23,2,0,0],
	// 			[36.18,16.16,84.8,22,23,1,0,0],
	// 			[84.8,36.18,0,23,23,1,0,0],
	// 			[19.02,0,36.18,1,8,1,0,0],
	// 			[36.18,19.02,56.2,2,8,1,0,0],
	// 			[56.2,36.18,33.32,3,8,1,0,1],
	// 			[33.32,56.2,36.18,4,8,1,0,0],
	// 			[36.18,33.32,59.06,5,8,1,0,0],
	// 			[59.06,36.18,76.22,6,8,1,0,0],
	// 			[76.22,59.06,33.32,7,8,1,0,0],
	// 			[33.32,76.22,0,8,8,1,0,0],
	// 			[7.58,0,19.02,1,14,1,0,0],
	// 			[19.02,7.58,33.32,2,14,1,0,0],
	// 			[33.32,19.02,16.16,3,14,1,0,0],
	// 			[16.16,33.32,101.96,4,14,1,0,0],
	// 			[101.96,16.16,59.06,5,14,1,0,0],
	// 			[59.06,101.96,76.22,6,14,1,0,0],
	// 			[76.22,59.06,19.02,7,14,1,0,0],
	// 			[19.02,76.22,33.32,8,14,1,0,0],
	// 			[33.32,19.02,16.16,9,14,1,0,0],
	// 			[16.16,33.32,33.32,10,14,1,0,0],
	// 			[33.32,16.16,90.52,11,14,1,0,0],
	// 			[90.52,33.32,56.2,12,14,1,0,0],
	// 			[56.2,90.52,19.02,13,14,1,0,0],
	// 			[19.02,56.2,0,14,14,1,0,1]
 //            ]; // data merupakan data train
 //    $values = 	[
 //    				[19.02,0,10.18,1,8,1],
	// 				[36.18,19.02,56.2,2,8,1],
	// 				[56.2,36.18,33.32,3,8,1],
	// 				[33.32,56.2,36.18,4,8,1],
	// 				[36.18,33.32,59.06,5,8,1],
	// 				[59.06,36.18,76.22,6,8,1],
	// 				[76.22,59.06,33.32,7,8,1],
	// 				[33.32,76.22,0,8,8,1]
 //    			]; // values merupakan data test
 //    $k = 3;

 //    $test->setDataTrain($data);

 //    /* PERHITUNGAN / EKSEKUSI */
 //    foreach ($values as $key => $row) {
	//     $test->setDataTest($row);
	//    	$result = $test->exec($,$row,$k);

 //   		echo "Target data test ke ".($key+1)." : ".$result."<br>";

 //   		array_push($values[$key], $result);
 //    }

   	/* OUTPUT CEK VALUES*/
   	// print_r($values);
?>
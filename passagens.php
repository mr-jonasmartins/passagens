		<?php

			$tentativas='A>C,A>C,A>C,B>D,B>D,B>D,B>D,B>D,A>B,A>B,A>B,A>B,B>C,B>C,B>C,B>C,B>C,A>D,A>D,A>D,A>D,A>D,A>D,A>D,A>D,A>D,C>D,C>D,C>D,C>D,C>D,C>D,C>D,C>D,B>D,B>D,B>D,B>D,B>C,B>C,B>C,A>C,A>B,A>B,B>C,B>C,B>C,A>C,C>D,C>D,C>D,C>D,C>D,C>D,C>D,B>D,B>D,B>D,B>D,A>B,A>B,A>B,A>B,A>B,A>B,A>B,A>B,A>B,A>B,A>B,A>C,A>C,A>C,A>C,A>C,A>C,A>C,A>C,A>C,A>C,A>D,C>D,C>D,C>D,C>D,B>D,B>D,B>D,B>D,B>D,A>B,A>B,A>C,A>C,A>C,C>D,C>D,A>B,A>B,A>D';

			$tentativas_array=explode(',', $tentativas);

			$ab=array(); $bc=array(); $cd=array();

			$poltronas=45;

			foreach ($tentativas_array as $key => $value){

				$key++;

				if ($value=='A>B' && count($ab)<$poltronas) {
					$ab[]=$key;
				}
				if ($value=='A>C' && count($ab)<$poltronas && count($bc)<$poltronas) {
					$ab[]=$key; $bc[]=$key;
				}
				if ($value=='A>D' && count($ab)<$poltronas && count($bc)<$poltronas && count($cd)<$poltronas) {
					$ab[]=$key; $bc[]=$key; $cd[]=$key;
				}
				if ($value=='B>C' && count($bc)<$poltronas) {
					$bc[]=$key;
				}
				if ($value=='B>D' && count($bc)<$poltronas && count($cd)<$poltronas) {
					$bc[]=$key; $cd[]=$key;
				}
				if ($value=='C>D' && count($cd)<$poltronas) {
					$cd[]=$key;
				}
				if (in_array($key, $ab) || in_array($key, $bc) || in_array($key, $cd)) {
					echo $key . '. VENDER <br>';
				} else {
					echo $key . '. NAO VENDER <br>';
				}
				
			}
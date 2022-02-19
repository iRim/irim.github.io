<?php

set_time_limit(0);

function createHash($lenght = 5){
	$symbols = [];
	$hash = substr(time(), -5);
	$sum = array_sum(str_split($hash));
	for ($i=45; $i <= 127; $i++) { 
		$chr = chr($i);
		if(preg_match('/^\w$/ui',$chr)){
			$symbols[] = $chr;
		}
	}
	$count = count($symbols);
	if($sum > $count){
		$sum -= $count;
	}
	shuffle($symbols);

	$symbols = array_slice($symbols,$sum, $lenght);
	return implode('',$symbols);
}

$urls = [];
while(TRUE){
	$hash = createHash(6);
	if(in_array($hash, $urls) or count($urls) == 1000000){
		break;
	}
	$urls[] = $hash;
}

echo 'Count: '.count($urls);
// echo'<hr><pre>';
// print_r($urls);
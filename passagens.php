<?php 
$tentativas = ["A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"];

$ab = [];
$bc = [];
$cd = [];
$poltronas = 45;
$i = 0;

foreach ($tentativas as $tentativa) {

    $i = $i + 1;

    if ($tentativa == "A>B" && count($ab) < $poltronas ) {
        array_push($ab,$i);
    }

    if ($tentativa == "A>C" && count($ab) < $poltronas && count($bc) < $poltronas) {
        array_push($ab,$i); 
        array_push($bc,$i);
    }

    if ($tentativa == "A>D" && count($ab)  < $poltronas && count($bc) < $poltronas && count($cd) < $poltronas) {
        array_push($ab,$i); 
        array_push($bc,$i); 
        array_push($cd,$i);
    }

    if ($tentativa == "B>C" && count($bc) < $poltronas) {
        array_push($bc,$i);
    }

    if ($tentativa == "B>D" && count($bc) < $poltronas && count($cd) < $poltronas) {
        array_push($bc,$i); 
        array_push($cd,$i);
    }

    if ($tentativa == "C>D" && count($cd) < $poltronas) {
        array_push($cd,$i);
    }
    
    if (in_array($i, $ab) || in_array($i, $bc) || in_array($i, $cd)) {
        echo "$i - $tentativa - VENDER\n";
    } else {
        echo "$i - $tentativa - NAO VENDER\n";
    }    

}
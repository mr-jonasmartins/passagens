#/usr/bin/perl

my @tentativas = ("A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D");

@ab = ();
@bc = ();
@cd = ();
$poltronas = 45;
$i = 0;

push (@tentativas, 'A>D');

foreach my $tentativa (@tentativas) {

    $i = $i + 1;

    if ($tentativa =~ "A>B" && scalar(@ab) < $poltronas) {
        push(@ab, $i);
    }

    if ($tentativa =~ "A>C" && scalar(@ab) < $poltronas && scalar(@bc) < $poltronas) {
        push(@ab, $i); 
        push(@bc, $i);
    }

    if ($tentativa =~ "A>D" && scalar(@ab)  < $poltronas && scalar(@bc) < $poltronas && scalar(@cd) < $poltronas) {
        push(@ab, $i); 
        push(@bc, $i); 
        push(@cd, $i);
    }

    if ($tentativa =~ "B>C" && scalar(@bc) < $poltronas) {
        push(@bc, $i);
    }

    if ($tentativa =~ "B>D" && scalar(@bc) < $poltronas && scalar(@cd) < $poltronas) {
        push(@bc, $i); 
        push(@cd, $i);
    }

    if ($tentativa =~ "C>D" && scalar(@cd) < $poltronas) {
        push(@cd, $i);
    }

    if ($i ~~ @ab || $i ~~ @bc || $i ~~ @cd ){
        print "$i - $tentativa - VENDER \n";
    } else {
        print "$i - $tentativa - NAO VENDER \n";
    }

}
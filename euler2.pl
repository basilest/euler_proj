#!/usr/bin/perl

my $max=4000000;
my $tot = 2;

my $p = 1;
my $n = 2;

do {
    $N = $n + $p;
    $p = $n;
    $n = $N;
    $tot += $N unless($N%2);
    #last if ($N > $max);
    die "$tot\n" if ($N > $max);
} while (1);
 print "$tot\n";

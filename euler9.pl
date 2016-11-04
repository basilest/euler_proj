#!/usr/bin/perl

my $N=$ARGV[0];

my $a, $b;
for ($a=1; $a<=999; $a++) {
    for ($b=1; $b<=999; $b++) {
        my $a2 = $a * $a;
        my $b2 = $b * $b;
        my $c2 = $a2 + $b2;
        my $c  = sqrt($c2);
        my $i  = int($c);
        die "found $a $b $c\n" if (($i == $c) && ($a+$b+$c)==1000);
    }
}


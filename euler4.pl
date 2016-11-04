#!/usr/bin/perl

my $N=$ARGV[0];

my $P=0;
my $a, $b;
for ($a=100; $a<=999; $a++) {
    for ($b=100; $b<=999; $b++) {
        my $p = $a * $b;
        my $s = $p . "";
        if (($s eq reverse $s) && ($p > $P)) {
           print "found palind: $p\n";
           $P=$p;
        }
    }
}

print "palindrome is $P.\n";

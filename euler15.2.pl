#!/usr/bin/perl
 use bigint;

my $N=$ARGV[0];

my @A, @B = (1) x $N;

for (my $i=0; $i<$N; $i++, @A=@B) {
    for (my $j=0; $j<$N; $j++) {
        $B[$j] = $j ? $B[$j-1]+$A[$j] : 1;
    }
}

print pop @A ;

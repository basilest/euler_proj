#!/usr/bin/perl

 use bigint;

my $N=$ARGV[0];


my $n = 2**1000;
my $tot=0;
my @a = split("", $n);

while (@a) {
     $tot += shift @a;
}
print "$n (sum of digits:$tot)\n";

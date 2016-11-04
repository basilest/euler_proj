#!/usr/bin/perl

my $max=1000;
my $tot = 0;
for ($i=1; $i<$max; $i++) {
     $tot += $i if ((!($i%3)) || (!($i%5)));
 }

 print $tot;

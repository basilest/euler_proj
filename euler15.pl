#!/usr/bin/perl

 use bigint;

my $N=$ARGV[0];


my ($i,$T);
sub path {
    my ($r, $c, $str) = @_;

    $str .= " -($r,$c)"; 

    if   ($r < $N)   {path($r+1, $c, $str);}
    if   ($c < $N)   {path($r, $c+1, $str);}
    if ($r==$c && $c==$N) { print "$str\n"; }
} 


path (0,0, "");
#print substr ($T,0,10)."\n";


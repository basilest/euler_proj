#!/usr/bin/perl

my $N=$ARGV[0];

sub num_divisors {
    my ($n, $pr) = @_;
    my ($tot,$i,$max);
    for ($i=2, $max=$n/2, $tot=2; $i<$max; $i++) {   #tot: at least 1 and $n --> 2
        if(!($n % $i)) {
            $max = $n/$i;
            $tot += ($i == $max) ? 1 : 2;   # $i and $n/$i
            print "divisor of $n: $i ($max)\n" if($pr);
        }
    }
    return $tot;
}

sub get_nth_triang_num {
    my ($n) = @_;
    return ($n+1) * ($n/2);
}


my ($i,$T500);
for ($i=1; 1; $i++) {

    my $T500  = get_nth_triang_num($i);
    my $div = num_divisors ($T500);
    if($div > 500) {
        print "The $i th num Triang. is $T500 whose divisors are: $div (>500)\n";
        num_divisors($T500,1);
        last;
    }
} 


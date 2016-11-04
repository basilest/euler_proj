#!/usr/bin/perl

my $N=$ARGV[0];

sub is_prime {
    my ($n,$i)=@_;
    return 0 if ($n <= 1);
    return 1 if ($n <= 3);
    return 0 if (!($n % 2) || !($n % 3));
    for ($i=5; ($i*$i) <= $n; $i+=6) {
        return 0 if (!($n % $i) || !($n % ($i+2)));
    }
    return 1;
}

my $n;
my $i;
my $S=2;

for ($i=3; $i<$N; $i+=2) {

      $S += $i if (is_prime($i));
} 

print "The sum of all primes < $N is $S.\n";

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

for ($n=1, $i=3; 1; $i+=2) {

      $n++ if (is_prime($i));
      last if ($n==$N);
} 

print "{$N}th prime is $i.\n";

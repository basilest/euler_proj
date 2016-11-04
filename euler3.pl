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

$not = " not" if (! is_prime($N));
print "$N is$not prime.\n";

my $F = 1;

if($not) {
    for ($i = 2; 1; $i++) {
          my $f = $N/$i;
          if ($f == int($f)) {
              print "testing $f and $i.\n";
              $F = $i if (is_prime($i));
              if (is_prime($f)) {
                  $F = $f; last;
              }
          }
          last if ($i >= $f);
    } 
}

print "factor is $F.\n";

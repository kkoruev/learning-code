#!usr/bin/perl
use strict;
use warnings;
use v5.012;





open my $fh , '>' , $ARGV[0] or die "Error";

my $cnt = 0;


while( $cnt < 1000000){ 
    my $num = int rand(100);
    $fh->say($num);
    $cnt++;
}

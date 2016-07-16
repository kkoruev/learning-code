#!usr/bin/perl

use lib '/home/chris/learning-code/fmi_perl';
use strict;
use warnings;
use v5.12;

use My::Test qw(test);

say My::Test->test;

my @array = (1, 2, "s");
say @array;

#references

my $array_ref = \@array;

my $first = $array_ref->[0];
say $first;

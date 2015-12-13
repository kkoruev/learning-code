#!usr/bin/perl

use strict;
use warnings;
use v5.12;


# Test $#

my @arrR =  ( 1,2,3, "John" );



for (@arrR) { 
	
	say "#$_";
}




# Test scalar reverse



while( <> ) { 

	chomp;
	say scalar  reverse;

}


# Test array slice

my @arr = (1,2,3,4,"Kris", (1,2,));

my @indexes =  (1,2,3); 

my @arr_elem = @arr [ @indexes ];

my $test_index = @arr [ @indexes ];

my @list_slice = (1 ,2, 3) [ 1 ];

for (@arr_elem) { 
	say;
}

for (@list_slice) { 
	say;
}

say $test_index;



#  Test with arrays

my @cats  = ( "cat" , "dog" , "mouse" );

say 'I have ' . @cats . ' cats!';

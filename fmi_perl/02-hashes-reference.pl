#!usr/bin/perl


use strict;
use warnings;
use v5.012;


sub stupid_ref_test { 


	my @arr_num = ( 1,2,3,4,5);

	my $arr_ref = \@arr_num;

	push @$arr_ref , qw/5 6/;

	say @$arr_ref;
}

sub test_cpy_arr { 

	my @arr_num = ( 1, 2, 3, 4, 5);

	my $arr_ref = \@arr_num;

	my @arr_num_cpy = @$arr_ref;

	push @arr_num_cpy , 7;

	say @$arr_ref;
	say @arr_num_cpy; 
}

sub test_arr_ref_slice { 
	
	my @arr_num = ( 1,2,3,4,5);

	my $arr_ref = \@arr_num;

	my @even_numbers = @ { $arr_ref } [1,3];
	
	say @even_numbers;

}

sub test_hash_ref_slice{

	my %hash_colors = ( 
		"blue" => "Chelsea",
		"red"  => "MU",
		"white" => "RM",
	);
	
	my $colors_ref = \%hash_colors;

	my @colors = ("blue","black","white","yellow");

	my @teams  = @{ $colors_ref }{@colors };

	for my $team (@teams){
		say $team if defined $team;
		
	} 

} 

test_hash_ref_slice();

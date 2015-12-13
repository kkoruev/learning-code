#!usr/bin/perl

use strict;
use warnings;
use v5.012;

use File::Find;




sub wanted { 

	open my $fh,$ARGV[0] or die "Cant open";
    
    my $cnt = 0;

	while ( my $line = <$fh>)  { 
        chomp $line;
		$cnt++ if ( $line % 2 == 0);
 	}

    say $cnt;
	

}

if( !@ARGV) { 

	die "PEDAL";
}


wanted(); 

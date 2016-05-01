#!usr/bin/perl

use strict;
use warnings;
use v5.012;

use Config;
    $Config{useithreads} and say "OK"  or
        die('Recompile Perl with threads to run this program.');


use threads;

use threads::shared;

my @data :shared;
my $bool_work_time :shared  = 0;
sub exec { 
    
    open my $fh, $ARGV[0] or die "Cannot open file";
    
    $bool_work_time = 1;

    while ( my $line :shared  = <$fh> ) { 
        {
            chomp $line; 
            lock(@data);      
            push @data , $line;     
        
        }                
        threads->yield();
    }
    
    while ( @data) { 

    }    
    
    $bool_work_time = 0;
}

sub check { 
    
    my $line;
    my $cnt = 0;  

    while ( $bool_work_time ) { 
        if( @data ) { 
 
            { 
                lock(@data); 
                $line = shift @data;
                
            }

            threads->yield();
            if( $line % 2 ==0) { 
                
                $cnt++;

            }
        } 

    } 
    return $cnt;
}

 
my $thr_read = threads->create(\&exec);
my $thr_check = threads->create(\&check);

while(1){
    
    if($thr_read->is_joinable() && $thr_check->is_joinable()){
        last;
    }
    else{
            #say "Not yet";
    }
}

$thr_read->join();
my $cnt = $thr_check->join();
say $cnt;

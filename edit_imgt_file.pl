#!/usr/bin/perl  -w


use strict;
my $inputfile=shift (@ARGV);

open(in_handle, $inputfile);

while(my $line=<in_handle>){
 #print ("line = $line\n");
  if ($line =~ /^>.*\|(TR.+)\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|$/){

    print(">$1\n");

  #} elsif ($line =~ /^>.*\|Homsap_?(IG.+)\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|.*\|/){
  } elsif ($line =~ /^>[\w\d\-\*]*\|(Homsap_)?(IG[\w\d\-\*]+)\|((.*)?\|?)*/ ){
#

    print(">$3\n");

  } else {

    $line =~ s/\.+//g;
    #get rid of dot
    print("$line");

  }
}

close (in_handle);

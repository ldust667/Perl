#!/usr/bin/perl
use warnings;
use strict;


our $splitUser;
my $user;

print "enter a user to get info";
$user=<STDIN>;
chomp($user);

while (<>)
{
my @array= split /:/, $_;

if($array[0] eq $user){
#$splitUser=split /:/, $_;
print $_;
}
 


}

#!/usr/bin/perl
use warnings;
use strict;


our $counter=0;
my $user;
my$pass;
my @userSeperate;

print "enter a username";
$user=<STDIN>;
chomp($user);
print "enter a password";
$pass=<STDIN>;
chomp($pass);

#chomp($user);
#open logs
open LOG, ">> login.log" or die $!;
#open file
open USERNAME, "username.txt";
#goes through each line of usernames
while (<USERNAME>)
{
#seperating lines by colons
my @array= split /:/, $_;
#rid of white spaces
chomp(@array);
#checking array ofline in file and username for validation
if($array[$counter] eq $user and $array[$counter+1] eq $pass){
#$splitUser=split /:/, $_;
print "Correct User";
}
 else{

select LOG;
print $user . " " . $pass . "Incorrect login recorded.";
}
$counter=$counter+2;

}

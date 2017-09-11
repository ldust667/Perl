#!/usr/bin/perl
use warnings;
use strict;
#creating array
my %test=qw(Test0 0 Test1 0 Test2 0 Test3 0 Test4 0);
my %quizzes;
my $answer;
my @arrayHolder;
my $counter=0;
my $element;
my $alltestelements=0;
my $allquizelements=0;

#prompting user
print "Press '1' to enter tests and '2' to enter quizzes";


#grabbing input
$answer = <STDIN>;
#checking input
if($answer == "1")
{
print "Enter 5 space seperated test grades \n";
#asking and getting scores
$answer=<STDIN>;

#splitting input by spaces
@arrayHolder=split /\s+/, $answer;

#looping through
for $element(@arrayHolder)
{

$test{"Test" . $counter}=$element;
++$counter;
}


#doing math
  for (keys %test)
{
$alltestelements=$alltestelements+$test{$_};
}
$alltestelements=$alltestelements/5;
print $alltestelements;
}



if($answer == "2")
{
print "Enter 5 space seperated test grades \n";
$answer=<STDIN>;


@arrayHolder=split /\s+/, $answer;


for $element(@arrayHolder)
{

$test{"Test" . $counter}=$element;
++$counter;
}



  for (keys %test)
{
$allquizelements=$allquizelements+$test{$_};
}
$allquizelements=$allquizelements/5);
print $allquizelements;
}





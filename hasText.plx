#!/usr/bin/perl
use warnings;
use strict;

my %where=qw(Dustin McAlisterville Zach Lewistown Ed Milroy);
#inserting matt
$where{Matt} = "Hesston";
#changing Ed
$where{Ed} = "Maui";
for (keys %where)
{
print $_ . " lives in " . %where{$_} . ". \n";
}
#deleting zach
delete($where{Zach});
for (keys %where)
{
print $_ . " lives in " . %where{$_} . ". \n";
}

#!/usr/bin/perl -w

use strict;
my $filename = "magicks";
my @spells;
open( my $FH, '<', $filename) or die;
while ( <$FH> ) {
	chomp;
	push( @spells, $_);

}

print "Do this: ";
my $spell_number = int(rand(scalar @spells));
print $spells[$spell_number], "\n";

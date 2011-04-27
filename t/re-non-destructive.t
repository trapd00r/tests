#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

my $str = 'foobar';
my $other = $str =~ s/bar/baz/r;

is($other, 'foobaz', 'non-destructive modifier OK');




done_testing();



# vim: set ts=2 expandtab sw=2:



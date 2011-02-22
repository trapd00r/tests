#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

{
  package Foo;
  sub Bar { 42 }
}

{
  package Foo::Bar;
  sub Bar { 12 };
}

package main;

my $x = Bar Foo;

is($x, 42, 'Bar Foo parsed as Foo::Bar()');


done_testing();



# vim: set ts=2 expandtab sw=2:

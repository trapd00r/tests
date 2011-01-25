#!/usr/bin/perl
use strict;
use Test::More tests => 2;


my $sub = sub { shift . ' <=> 42' };
*named = $sub;

is($sub->('foo'), 'foo <=> 42', '$sub->()');
is(named('bar'),  'bar <=> 42', 'named()');

#!/usr/bin/perl

use strict;
use warnings;
use Test::More;


# A subtest counts as 1 test
subtest 'Encapsulate related tests' => sub {
  is(42, 42, 'Subtest 1');
  pass("Subtest 2");
};


my $want = { foo => 42, bar => 2, baz => [9, 21] };
#my $have = { foo => 42, bar => 2, baz => [12, 21] };
my $have = $want;

is_deeply($have, $want) or diag(explain($have));

# Instead of no_plan . Make sure the tests run!
done_testing();


# vim: set ts=2 expandtab sw=2:



#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

sub factory {
  my($max, $n) = @_;
  return sub {
    return $n < $max ? ++$n : undef;
  }
}

subtest 'Iterator factory' => sub {
  my $i = factory(20, -2);

  is($i->(), -1, '-1 ok');
  is($i->(),  0, ' 0 ok');
  is($i->(),  1, '+1 ok');
};


# Instead of no_plan . Make sure the tests run!
done_testing();


# vim: set ts=2 expandtab sw=2:



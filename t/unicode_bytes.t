#!/usr/bin/perl

use strict;
use warnings;
use Test::More;



{ 
  my $char = 'å';
  is(length($char), 2, 'utf-8 OFF - å is 1 byte');

  $char = ' ⭓';
  is(length($char), 4, 'utf-8 OFF -  ⭓ is 4 bytes');

}

{
  use utf8;
  use open qw(:utf8 :std);

  my $char = 'å';
  is(length($char), 1, 'utf8 ON - å is 1 byte');

  $char = ' ⭓';
  is(length($char), 2, 'utf8 ON - ⭓ is 2 bytes');

}




done_testing();


# vim: set ts=2 expandtab sw=2:

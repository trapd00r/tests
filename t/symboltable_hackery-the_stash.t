#!/usr/bin/perl
use strict;
use Data::Dumper;
use Test::More;

my $stash = do { no strict 'refs'; \%{__PACKAGE__ . '::'} };


$stash->{is} = delete($stash->{Dumper});

print is($stash->{is}, '*' . __PACKAGE__ . '::is', 'ok');

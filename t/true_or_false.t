#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

if(not 0) {
  pass('false - 0');
}
if(not '') {
  pass('false - ""');
}
if(not undef) {
  pass("false - undef");
}

ok(-1, 'true - -1');

# Obviously, since it's a string...
ok('0 but true', 'true - "0 but true"');

# ... but it doesn't warn when used in numeric context
is('0 but true' +42, 42, 'true - "0 but true" + 42 == 42');

# while this do
is('foobar'     + 5,  5, 'true - "foobar" + 5 == 5, but produces warnings ---^');

ok('0E0', 'true - 0E0');
is('0E0' + 42, 42, 'true - "0E0" + 42 == 42');

done_testing();

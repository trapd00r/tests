#!/usr/bin/perl
use strict;
use Test::More tests => 3;


"foobar" =~ /(.)(.)(.)(?:.)/;
is($#+, 3, "\$#+ : 3 subgroups captured: [$1] [$2] [$3]");
is($', 'ar', "\$' : String following match: [$']");

"foobar" =~ /(foo).*/;
is($&, 'foobar', "\$& holds full match: [$&]");


# $`

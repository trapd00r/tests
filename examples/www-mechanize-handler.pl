#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use WWW::Mechanize;

my $m = WWW::Mechanize->new(
  agent =>
  'https://github.com/trapd00r/tests/blob/master/examples/www-mechanize-handler.pl',
);

$m->add_handler("request_send", sub { shift->dump; return });
$m->add_handler("response_done", sub { shift->dump; return });

my $url = shift // 'http://japh.se';

$m->get( $url );

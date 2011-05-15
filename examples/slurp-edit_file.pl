#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use File::Slurp qw(edit_file);

edit_file { s/less qw[(]cpu[)]/warnings FATAL => 'all'/ } $0;

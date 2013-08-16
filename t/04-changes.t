#!/usr/bin/perl

use strict;
use warnings;

use Test::More;


plan(skip_all => 'Author tests not required for installation')
	unless $ENV{RELEASE_TESTING};
plan(skip_all => 'Test::CPAN::Changes required for this test')
	unless eval('use Test::CPAN::Changes; 1');

changes_ok();

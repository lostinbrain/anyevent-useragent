#!/usr/bin/env perl

use strict;
use warnings;

use ExtUtils::MakeMaker;


WriteMakefile(
	NAME           => 'AnyEvent::UserAgent',
	AUTHOR         => 'Denis Ibaev <dionys@cpan.org>',
	VERSION_FROM   => 'lib/AnyEvent/UserAgent.pm',
	ABSTRACT_FROM  => 'lib/AnyEvent/UserAgent.pm',
	LICENSE        => 'perl',
	META_MERGE     => {
		resources => {
			license     => 'http://dev.perl.org/licenses/',
			repository  => 'http://github.com/AdCampRu/anyevent-useragent',
			bugtracker  => 'http://github.com/AdCampRu/anyevent-useragent/issues',
		},
		no_index  => {directory => ['t']},
	},
	BUILD_REQUIRES => {
		'Test::More'    => 0,
	},
	PREREQ_PM      => {
		'AnyEvent::HTTP' => 0,
		'HTTP::Cookies'  => 0,
		'HTTP::Message'  => 0,
		'Moo'            => 0,
	},
	dist           => {COMPRESS => 'gzip -9f', SUFFIX => 'gz'},
	clean          => {FILES => 'AnyEvent-UserAgent-*'},
	test           => {TESTS => 't/*.t'},
);

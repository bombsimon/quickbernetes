#!/usr/bin/env perl

use strict;
use utf8;
use warnings;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
    NAME           => 'App::quickbernetes',
    AUTHOR         => 'Simon Sawert <simon@sawert.se>',
    LICENSE        => 'MIT',
    ABSTRACT_FROM  => '',
    VERSION_FROM   => '',
    EXE_FILES      => [qw( quickbernetes )],
    BUILD_REQUIRES => {},
    TEST_REQUIRES  => {
        'Data::Printer' => 0,
    },
    PREREQ_PM => {
        'Applify'        => 0,
        'Mojo::Template' => 0,
    },
    META_MERGE => {
        'dynamic_config' => 0,
        'meta-spec'      => { version => 2 },
        'resources'      => {
            bugtracker => { web => 'https://github.com/bombsimon/quickbernetes/issues' },
            homepage   => 'https://github.com/bombsimon/quickbernetes',
            repository => {
                type => 'git',
                url  => 'https://github.com/bombsimon/quickbernetes.git',
                web  => 'https://github.com/bombsimon/quickbernetes',
            },
        },
        'x_contributors' => ['Simon Sawert'],
    },
    test => {},
);

WriteMakefile( %WriteMakefileArgs );

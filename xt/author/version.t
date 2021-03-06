#!/usr/bin/perl

# Test that all modules have a version number.

use strict;

BEGIN {
	$| = 1;
	$^W = 1;
}

my @MODULES = (
	'Test::HasVersion 0.012',
);

# Load the testing modules
use Test::More;
foreach my $MODULE ( @MODULES ) {
	eval "use $MODULE";
	if ( $@ ) {
		BAIL_OUT( "Failed to load required release-testing module $MODULE" );
	}
}

all_pm_version_ok();
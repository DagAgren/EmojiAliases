#!/usr/bin/perl

use strict;
use utf8;
use JSON;

my $text;
$text.=$_ while(<>);

my %emoji=%{decode_json($text)};

binmode(STDOUT,":utf8");

print "private let emojiDictionary: [String: String] = [\n";

my @lines;

for my $key (keys %emoji) {
	my @aliases=($emoji{$key}{alpha_code});
	push @aliases,split(/\|/,$emoji{$key}{aliases}) if $emoji{$key}{aliases};
	my $output=join "",map { chr(hex($_)) } split /-/,$emoji{$key}{output};
	for my $alias (@aliases) {
		$alias=~/:(.*):/;
		push @lines,"	\"$1\": \"$output\",\n";
	}
}

print sort @lines;

print "];\n";

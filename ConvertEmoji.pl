#!/usr/bin/perl

use strict;
use utf8;
use JSON;

my $text;
$text.=$_ while(<>);

my @emoji=@{decode_json($text)};

binmode(STDOUT,":utf8");

print "private let emojiDictionary: [String: String] = [\n";

my @lines;

for my $emoji (@emoji) {
	next unless $$emoji{emoji};
	for my $alias (@{$$emoji{aliases}}) {
		push @lines,"	\"$alias\": \"$$emoji{emoji}\",\n";
	}
}

print sort @lines;

print "];\n";

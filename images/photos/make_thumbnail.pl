#!/usr/bin/perl
# makes a thumbnail from the input image
# requires imagemagick to be installed: apt-get install imagemagick
# usage: make_thumbnail <original photo>

$inFile = $ARGV[0];
$outFile = $inFile;
$outFile =~ s/\.jpg/_thumb\.jpg/g;

print "making thumbnail from: $inFile . . .\n";
print "target file: $outFile\n";

$output = `convert $inFile -resize 800x600 $outFile`;
print "$output";

#!/usr/bin/perl

$extension = $ARGV[0];
chomp($extension);

if(!$extension) {
  die "Must provide extension\n";
}

print "Updating files with extension '$extension'\n";

open(PIPE, "find ../base -name \"*.$extension\" |") || die "Could not open pipe\n\n";

while($inlin = <PIPE>) {
  chomp($inlin);
  print "$inlin\n";
  system "cat $inlin | grep -v \"#\" > $inlin.nocomment";
  system "cp -f $extension.txt $inlin";
  system "cat $inlin.nocomment >> $inlin";
}

close(PIPE);


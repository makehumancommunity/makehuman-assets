#!/usr/bin/perl

$extension = $ARGV[0];
chomp($extension);

$dir = $ARGV[1];
chomp($dir);
if (!$dir) {
  $dir = "../base";
}

if(!$extension) {
  die "Must provide extension\n";
}

print "Updating files with extension '$extension'\n";

open(PIPE, "find $dir -name \"*.$extension\" |") || die "Could not open pipe\n\n";

while($inlin = <PIPE>) {
  chomp($inlin);
  print "$inlin\n";
  system "cat $inlin | grep -v \"#\" > $inlin.nocomment";
  system "cp -f $extension.txt $inlin";
  system "cat $inlin.nocomment >> $inlin";
  system "rm -f $inlin.nocomment";
}

close(PIPE);


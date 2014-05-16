#!/usr/bin/perl
#

@chars = (0 .. 9, "a" .. "g");

while (<>) {
    $ec2id = join("", @chars[ map { rand @chars } ( 1 .. 8 ) ]);
    $ip = join "-", map int rand 256, 1 .. 4;
    s/i-[0-9a-f]{8}/i-$ec2id/g;
    s/ec2-\d{1,3}\-\d{1,3}\-\d{1,3}\-\d{1,3}(.+)\.amazonaws\.com/ec2-$ip$1.amazonaws.com/g;
    print;
}

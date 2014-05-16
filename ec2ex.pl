#!/usr/bin/perl
#

@chars = (0 .. 9, "a" .. "g");

while (<>) {
    $ec2id = join("", @chars[ map { rand @chars } ( 1 .. 8 ) ]);
    s/i-[0-9a-g]{8}/i-$ec2id/g;
    print;
}

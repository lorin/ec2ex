# ec2ex

A tool for anonymizing EC2 hostnames and instance ids.

Useful if you are doing a presentation or a report using EC2 content as examples
but you don't want to reveal IPs or instance ids from your own server.

It looks for instance ids like `i-12345678` and EC2 public
hostnames like `ec2-192-47-114-106.compute-1.amazonaws.com` and replaces them
with random values.


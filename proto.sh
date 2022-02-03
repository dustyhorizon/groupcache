#! /bin/sh

# Make sure the script fails fast.
set -e
set -u
set -x

protoc -I=groupcachepb \
    --go_out=groupcachepb \
    groupcachepb/groupcache.proto

protoc -I=testpb \
    --go_out=testpb \
    testpb/test.proto

protoc -I=examplepb \
   --go_out=examplepb \
    examplepb/example.proto

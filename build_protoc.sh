#!/bin/zsh

protoc --dart_out=./example/lib protos/proto/common.proto
protoc --dart_out=./example/lib protos/proto/hall.proto
protoc --dart_out=./example/lib protos/proto/chat.proto
protoc --dart_out=./example/lib protos/proto/id.proto
protoc --dart_out=./example/lib protos/proto/robot.proto

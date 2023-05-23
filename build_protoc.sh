#!/bin/zsh
# 自定义协议输出路径
COUT_PATH="./example/lib/wsclient/protos"
# 自定义协议输入路径
CIN_PATH="protos/chatai"

if [ ! -d $COUT_PATH ]; then
  mkdir -p $COUT_PATH
fi

# chatai
protoc "--dart_out=$COUT_PATH" "--proto_path=$CIN_PATH" protos/chatai/data_info.proto
protoc "--dart_out=$COUT_PATH" "--proto_path=$CIN_PATH" protos/chatai/rpc_srv.proto

# PITAYA协议输出路径
POUT_PATH="./example/lib/wsclient/protos"
# PITAYA协议输入路径
PIN_PATH="protos/pitaya"

if [ ! -d $POUT_PATH ]; then
  mkdir -p $POUT_PATH
fi

# pitaya
#protoc "--dart_out=$POUT_PATH" "--proto_path=$PIN_PATH" protos/pitaya/msg.proto
protoc "--dart_out=$POUT_PATH" "--proto_path=$PIN_PATH" protos/pitaya/error.proto
protoc "--dart_out=$POUT_PATH" "--proto_path=$PIN_PATH" protos/pitaya/kick.proto
#protoc "--dart_out=$POUT_PATH" "--proto_path=$PIN_PATH" protos/pitaya/push.proto
#protoc "--dart_out=$POUT_PATH" "--proto_path=$PIN_PATH" protos/pitaya/session.proto
#protoc "--dart_out=$POUT_PATH" "--proto_path=$PIN_PATH" protos/pitaya/request.proto
#protoc "--dart_out=$POUT_PATH" "--proto_path=$PIN_PATH" protos/pitaya/response.proto

load("@io_bazel_rules_go//go:def.bzl", "go_library")
load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")
load("@rules_proto//proto:defs.bzl", "proto_library")

proto_library(
    name = "options_proto",
    srcs = [
        "annotations.proto",
        "openapiv2.proto",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@com_google_protobuf//:descriptor_proto",
        "@com_google_protobuf//:struct_proto",
    ],
)

go_proto_library(
    name = "options_go_proto",
    importpath = "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2/options",
    proto = ":options_proto",
    visibility = ["//visibility:public"],
)

go_library(
    name = "options",
    embed = [":options_go_proto"],
    importpath = "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2/options",
    visibility = ["//visibility:public"],
)

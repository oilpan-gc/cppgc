load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def cppgc_repositories():
  maybe(
      repo_rule = http_archive,
      name = "platforms",
      urls = [
          "https://mirror.bazel.build/github.com/bazelbuild/platforms/releases/download/0.0.5/platforms-0.0.5.tar.gz",
          "https://github.com/bazelbuild/platforms/releases/download/0.0.5/platforms-0.0.5.tar.gz",
      ],
      sha256 = "379113459b0feaf6bfbb584a91874c065078aa673222846ac765f86661c27407",
  )
  maybe(
    repo_rule = http_archive,
    name = "com_google_googletest",
    urls = ["https://github.com/google/googletest/archive/5126f7166109666a9c0534021fb1a3038659494c.zip"],
    strip_prefix = "googletest-5126f7166109666a9c0534021fb1a3038659494c",
    sha256 = "d09a503599da941e4990e4ca4adf7b17e26823087cbd14df1742c6f9a6ff7cd6",
  )
  maybe(
    repo_rule = http_archive,
    name = "bazel_skylib",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.2.1/bazel-skylib-1.2.1.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.2.1/bazel-skylib-1.2.1.tar.gz",
    ],
    sha256 = "f7be3474d42aae265405a592bb7da8e171919d74c16f082a5457840f06054728",
  )

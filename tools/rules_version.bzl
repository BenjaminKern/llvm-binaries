# SPDX-License-Identifier: MIT
# Copyright (c) 2025 Benjamin Kern

def _version_info_impl(repo_ctx):
    repo_ctx.file("BUILD.bazel", "")
    version_bzl_path = repo_ctx.path(Label("//:version.bzl"))
    version_content = repo_ctx.read(version_bzl_path)
    repo_ctx.file("version.bzl", version_content)

version_info = repository_rule(
    implementation = _version_info_impl,
    attrs = {},
)

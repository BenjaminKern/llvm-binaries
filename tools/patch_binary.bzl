# SPDX-License-Identifier: MIT
# Copyright (c) 2025 Benjamin Kern

def patch_binary(name, binary):
    """Generates a patched version of a given cc_binary.

    Args:
      name: The name of the patched binary.
      binary: The name of the cc_binary target to patch.
    """

    native.config_setting(
        name = name + "_macos",
        constraint_values = ["@platforms//os:macos"],
    )

    native.config_setting(
        name = name + "_linux",
        constraint_values = ["@platforms//os:linux"],
    )

    native.genrule(
        name = name + "_patched",
        srcs = [binary],
        outs = [name],
        cmd = select({
            name + "_macos": "cp $(location {}) $@ && install_name_tool -add_rpath @loader_path $@".format(binary),
            name + "_linux": "cp $(location {}) $@ && chmod +w $@ && /usr/bin/patchelf --set-rpath \\$$ORIGIN $@".format(binary),
        }),
    )

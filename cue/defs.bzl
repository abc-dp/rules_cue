"Public API re-exports"

load("@rules_cue//cue:cue.bzl", _cue_module = "cue_module")

def cue_version(name):
    native.genrule(
        name = name,
        cmd = "$(CUE_BIN) version",
        toolchains = ["@rules_abcue//cue:resolved_toolchain"],
    )

def cue_module(name = "cue.mod", **kwargs):
    _cue_module(
        name = name,
        **kwargs
    )

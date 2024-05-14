def miniature(name, src, size = "100x100", **kwargs):
    """Create a miniature of the src image.

    The generated file is prefixed with 'small_'.
    """
    native.genrule(
        name = name,
        srcs = [src],
        outs = ["small_" + src],
        cmd = "convert $< -resize " + size + " $@",
        **kwargs
    )

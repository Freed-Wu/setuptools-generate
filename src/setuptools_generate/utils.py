"""Utilities
============
"""

import io
from collections.abc import Callable
from contextlib import redirect_stdout, suppress


def get_stdout(function: Callable) -> str:
    """Get stdout.

    :param function:
    :type function: Callable
    :rtype: str
    """
    string = io.StringIO()
    with redirect_stdout(string), suppress(SystemExit):
        function()
    string.seek(0)
    content = string.read()
    return content

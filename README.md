# Elixir Enum.reduce and throw - Unexpected Behavior

This repository demonstrates a potential issue when using `Enum.reduce` in Elixir along with a `throw` statement. The code appears to work correctly at first glance but can lead to unexpected behaviour if the `throw` is not handled correctly.

The example shows a list being reduced, and if the number 3 is encountered, a `:three_found` exception is thrown. The problem is that if this exception is not caught, it could cause issues in other parts of your code.

**Bug:** The code doesn't explicitly handle the thrown exception.  It will terminate the `Enum.reduce` and potentially cause an error in any functions calling the reduce function unless the calling function handles the exception.
# Elixir Enum.each with throw - Masking Errors

This example demonstrates a subtle issue that can arise when using `throw` inside an `Enum.each` loop in Elixir.  The `throw` statement interrupts the loop, preventing any subsequent elements from being processed.  If there are other errors further down the processing pipeline that are masked by the earlier `throw`, they will not be reported. This can make debugging more difficult as the root cause isn't immediately evident.

The solution involves refactoring to use other Elixir constructs which handle error propagation more gracefully like `try-catch`. This solution also allows to process elements even after the `throw` in another way.

## Bug
The `bug.exs` file contains the problematic code.
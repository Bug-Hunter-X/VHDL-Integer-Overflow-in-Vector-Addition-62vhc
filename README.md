# VHDL Integer Overflow Bug

This repository demonstrates a common error in VHDL: integer overflow during vector addition. The buggy code attempts to add two 8-bit vectors, potentially resulting in a sum that exceeds the 8-bit range. This can lead to unexpected behavior and incorrect results. The solution shows how to prevent this by using a larger data type for the result.

## Bug Description

The `buggy_code.vhdl` file contains a VHDL entity that adds two 8-bit vectors. If the sum of the two input vectors exceeds 255, the result will be truncated to the lower 8 bits, causing an overflow.

## Solution

The `buggy_code_solution.vhdl` file demonstrates how to fix the issue. The solution uses a larger data type (std_logic_vector(9 downto 0)) to hold the result, which prevents overflow. The solution also adds explicit checks to detect overflows.

Assembly language code I used to test for a hardware multiply on the Rockwell 65C02
Some of their 6502 based microcontrollers have a hardware multiply,
and I wanted to check if it was on their regular 65C02 CPU but undocumented.
No, it's not there.  To deal with undocumented instructions on a 6502,
a test should probably follow the multiply instruction with a few NOPs,
and then test the result.
Once I can afford a new FPGA board maybe I can change this.  :)

The multiply is on opcode $02, and it multiplies the contents of A and Y
with the result in A Y.  
I can't remember which register holds the most significant byte.

FWIW, the 65816 uses $02 as a coprocessor instruction.  


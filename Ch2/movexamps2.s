//
// Example of 128-Bit addition with the ADD/ADC instructions.
//
.global _start      //  provide program starting point
.align  2           //  for darwin

// Load the registers with some data
// First 64-bit number is 0x0000000000000003FFFFFFFFFFFFFFFF
_start:     MOV     X2, 0x0000000000000003
            MOV     X3, 0xFFFFFFFFFFFFFFFF  //  Assembler will change to MOVN

// Second 64-bit number is 0x00000000000000050000000000000001
            MOV     X4, 0x0000000000000005
            MOV     X5, 0x0000000000000001

            ADDS    X1, X3, X5  // lower order 64-bits
            ADC     X0, X2, X4  // higher order 64-bits  

// Setup the parameters to exit the program
// and then call the kernel to do it.
// W0 is the return code and will be what we
// calculated above.
            MOV     X16, #1     // System call number 1 terminates this program
            SVC     0           // call kernel to terminate
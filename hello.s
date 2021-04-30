.text
.global _main

_main:
  // Write string.
  mov X0, #1         // 1 = stdout
  adr X1, helloworld // string to print
  mov X2, #13        // length of string
  mov X16, #4        // macOS SYS_WRITE
  svc 0              // syscall

  // Exit program.
  mov     X0, #0      // Exit with 0
  mov     X16, #1     // macOS SYS_EXIT
  svc     0           // syscall

.align 2
helloworld:
  .ascii  "Hello World!\n"

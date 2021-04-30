#include <sys/syscall.h>

.global _main
.align 4

_main:
  // Write string.
  mov X0, #1             // 1 = stdout
  adr X1, helloworld     // string to print
  mov X2, #13            // length of string
  mov X16, #SYS_write
  svc 0                  // syscall

  // Exit program.
  mov     X0, #0         // Exit with 0
  mov     X16, #SYS_exit // macOS SYS_exit
  svc     0              // syscall

helloworld:
  .ascii  "Hello World!\n"

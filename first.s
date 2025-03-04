/* -- first.s -- */
.global _start  /* Declare '_start' as global */

_start:
    mov r0, #255      /* Set return code to 2 */
    mov r7, #1      /* syscall number for exit */
    svc #0          /* Make system call to exit */


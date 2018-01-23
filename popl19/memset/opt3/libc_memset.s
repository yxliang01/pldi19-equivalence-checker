  .text
  .globl libc_memset
  .type libc_memset, @function

#! file-offset 0x70
#! rip-offset  0x30
#! capacity    564 bytes

# Text                          #  Line  RIP    Bytes  Opcode                  
.libc_memset:                   #        0x30   0      OPC=<label>             
  cmpl $0x7, %edx               #  1     0x30   3      OPC=cmpl_r32_imm8       
  pushq %r13                    #  2     0x33   2      OPC=pushq_r64_1         
  movq %rdi, %rax               #  3     0x35   3      OPC=movq_r64_r64        
  pushq %r12                    #  4     0x38   2      OPC=pushq_r64_1         
  movq %rdi, %rcx               #  5     0x3a   3      OPC=movq_r64_r64        
  pushq %rbp                    #  6     0x3d   1      OPC=pushq_r64_1         
  pushq %rbx                    #  7     0x3e   1      OPC=pushq_r64_1         
  jbe .L_19e                    #  8     0x3f   6      OPC=jbe_label_1         
  movzbl %sil, %r8d             #  9     0x45   4      OPC=movzbl_r32_r8       
  movq %r8, %rdi                #  10    0x49   3      OPC=movq_r64_r64        
  movq %r8, %r9                 #  11    0x4c   3      OPC=movq_r64_r64        
  shlq $0x8, %rdi               #  12    0x4f   4      OPC=shlq_r64_imm8       
  orq %rdi, %r8                 #  13    0x53   3      OPC=orq_r64_r64         
  movq %r8, %rdi                #  14    0x56   3      OPC=movq_r64_r64        
  shlq $0x10, %rdi              #  15    0x59   4      OPC=shlq_r64_imm8       
  orq %rdi, %r8                 #  16    0x5d   3      OPC=orq_r64_r64         
  movq %r8, %rdi                #  17    0x60   3      OPC=movq_r64_r64        
  shlq $0x20, %rdi              #  18    0x63   4      OPC=shlq_r64_imm8       
  orq %rdi, %r8                 #  19    0x67   3      OPC=orq_r64_r64         
  testb $0x7, %al               #  20    0x6a   2      OPC=testb_al_imm8       
  je .L_7f                      #  21    0x6c   2      OPC=je_label            
  xchgw %ax, %ax                #  22    0x6e   2      OPC=xchgw_r16_ax        
.L_70:                          #        0x70   0      OPC=<label>             
  movb %r9b, (%rcx)             #  23    0x70   3      OPC=movb_m8_r8          
  addq $0x1, %rcx               #  24    0x73   4      OPC=addq_r64_imm8       
  subl $0x1, %edx               #  25    0x77   3      OPC=subl_r32_imm8       
  testb $0x7, %cl               #  26    0x7a   3      OPC=testb_r8_imm8       
  jne .L_70                     #  27    0x7d   2      OPC=jne_label           
.L_7f:                          #        0x7f   0      OPC=<label>             
  movl %edx, %edi               #  28    0x7f   2      OPC=movl_r32_r32        
  shrl $0x6, %edi               #  29    0x81   3      OPC=shrl_r32_imm8       
  testl %edi, %edi              #  30    0x84   2      OPC=testl_r32_r32       
  je .L_d4                      #  31    0x86   2      OPC=je_label            
  subl $0x1, %edi               #  32    0x88   3      OPC=subl_r32_imm8       
  leaq 0x40(%rcx), %r9          #  33    0x8b   4      OPC=leaq_r64_m16        
  movq %rcx, %r11               #  34    0x8f   3      OPC=movq_r64_r64        
  movq %rdi, %r10               #  35    0x92   3      OPC=movq_r64_r64        
  shlq $0x6, %r10               #  36    0x95   4      OPC=shlq_r64_imm8       
  addq %r9, %r10                #  37    0x99   3      OPC=addq_r64_r64        
  jmpq .L_a4                    #  38    0x9c   2      OPC=jmpq_label          
  xchgw %ax, %ax                #  39    0x9e   2      OPC=xchgw_r16_ax        
.L_a0:                          #        0xa0   0      OPC=<label>             
  addq $0x40, %r9               #  40    0xa0   4      OPC=addq_r64_imm8       
.L_a4:                          #        0xa4   0      OPC=<label>             
  cmpq %r9, %r10                #  41    0xa4   3      OPC=cmpq_r64_r64        
  movq %r8, (%rcx)              #  42    0xa7   3      OPC=movq_m64_r64        
  movq %r8, 0x8(%rcx)           #  43    0xaa   4      OPC=movq_m64_r64        
  movq %r8, 0x10(%rcx)          #  44    0xae   4      OPC=movq_m64_r64        
  movq %r8, 0x18(%rcx)          #  45    0xb2   4      OPC=movq_m64_r64        
  movq %r8, 0x20(%rcx)          #  46    0xb6   4      OPC=movq_m64_r64        
  movq %r8, 0x28(%rcx)          #  47    0xba   4      OPC=movq_m64_r64        
  movq %r8, 0x30(%rcx)          #  48    0xbe   4      OPC=movq_m64_r64        
  movq %r8, 0x38(%rcx)          #  49    0xc2   4      OPC=movq_m64_r64        
  movq %r9, %rcx                #  50    0xc6   3      OPC=movq_r64_r64        
  jne .L_a0                     #  51    0xc9   2      OPC=jne_label           
  shlq $0x6, %rdi               #  52    0xcb   4      OPC=shlq_r64_imm8       
  leaq 0x40(%r11,%rdi,1), %rcx  #  53    0xcf   5      OPC=leaq_r64_m16        
.L_d4:                          #        0xd4   0      OPC=<label>             
  movl %edx, %r9d               #  54    0xd4   3      OPC=movl_r32_r32        
  andl $0x3f, %r9d              #  55    0xd7   4      OPC=andl_r32_imm8       
  shrl $0x3, %r9d               #  56    0xdb   4      OPC=shrl_r32_imm8       
  testl %r9d, %r9d              #  57    0xdf   3      OPC=testl_r32_r32       
  je .L_19b                     #  58    0xe2   6      OPC=je_label_1          
  movq %rcx, %rdi               #  59    0xe8   3      OPC=movq_r64_r64        
  shlq $0x3c, %rdi              #  60    0xeb   4      OPC=shlq_r64_imm8       
  shrq $0x3f, %rdi              #  61    0xef   4      OPC=shrq_r64_imm8       
  cmpl %r9d, %edi               #  62    0xf3   3      OPC=cmpl_r32_r32        
  cmoval %r9d, %edi             #  63    0xf6   4      OPC=cmoval_r32_r32      
  cmpl $0x7, %r9d               #  64    0xfa   4      OPC=cmpl_r32_imm8       
  je .L_1c0                     #  65    0xfe   6      OPC=je_label_1          
  cmpl $0x1, %r9d               #  66    0x104  4      OPC=cmpl_r32_imm8       
  movq %r8, (%rcx)              #  67    0x108  3      OPC=movq_m64_r64        
  leaq 0x8(%rcx), %rdi          #  68    0x10b  4      OPC=leaq_r64_m16        
  je .L_247                     #  69    0x10f  6      OPC=je_label_1          
  cmpl $0x2, %r9d               #  70    0x115  4      OPC=cmpl_r32_imm8       
  movq %r8, 0x8(%rcx)           #  71    0x119  4      OPC=movq_m64_r64        
  leaq 0x10(%rcx), %rdi         #  72    0x11d  4      OPC=leaq_r64_m16        
  je .L_23c                     #  73    0x121  6      OPC=je_label_1          
  cmpl $0x3, %r9d               #  74    0x127  4      OPC=cmpl_r32_imm8       
  movq %r8, 0x10(%rcx)          #  75    0x12b  4      OPC=movq_m64_r64        
  leaq 0x18(%rcx), %rdi         #  76    0x12f  4      OPC=leaq_r64_m16        
  je .L_231                     #  77    0x133  6      OPC=je_label_1          
  cmpl $0x4, %r9d               #  78    0x139  4      OPC=cmpl_r32_imm8       
  movq %r8, 0x18(%rcx)          #  79    0x13d  4      OPC=movq_m64_r64        
  leaq 0x20(%rcx), %rdi         #  80    0x141  4      OPC=leaq_r64_m16        
  je .L_226                     #  81    0x145  6      OPC=je_label_1          
  cmpl $0x6, %r9d               #  82    0x14b  4      OPC=cmpl_r32_imm8       
  movq %r8, 0x20(%rcx)          #  83    0x14f  4      OPC=movq_m64_r64        
  leaq 0x28(%rcx), %rdi         #  84    0x153  4      OPC=leaq_r64_m16        
  jne .L_21e                    #  85    0x157  6      OPC=jne_label_1         
  leaq 0x30(%rcx), %rdi         #  86    0x15d  4      OPC=leaq_r64_m16        
  movq %r8, 0x28(%rcx)          #  87    0x161  4      OPC=movq_m64_r64        
  movl $0x6, %r10d              #  88    0x165  6      OPC=movl_r32_imm32      
.L_16b:                         #        0x16b  0      OPC=<label>             
  cmpl %r10d, %r9d              #  89    0x16b  3      OPC=cmpl_r32_r32        
  je .L_192                     #  90    0x16e  2      OPC=je_label            
  movl %r9d, %r12d              #  91    0x170  3      OPC=movl_r32_r32        
  movl %r10d, %ebx              #  92    0x173  3      OPC=movl_r32_r32        
  subl %r10d, %r12d             #  93    0x176  3      OPC=subl_r32_r32        
  leal -0x2(%r12), %r11d        #  94    0x179  5      OPC=leal_r32_m16        
  shrl $0x1, %r11d              #  95    0x17e  3      OPC=shrl_r32_one        
  addl $0x1, %r11d              #  96    0x181  4      OPC=addl_r32_imm8       
  cmpl $0x1, %r12d              #  97    0x185  4      OPC=cmpl_r32_imm8       
  leal (%r11,%r11,1), %r13d     #  98    0x189  4      OPC=leal_r32_m16        
  jne .L_1df                    #  99    0x18d  2      OPC=jne_label           
.L_18f:                         #        0x18f  0      OPC=<label>             
  movq %r8, (%rdi)              #  100   0x18f  3      OPC=movq_m64_r64        
.L_192:                         #        0x192  0      OPC=<label>             
  subl $0x1, %r9d               #  101   0x192  4      OPC=subl_r32_imm8       
  leaq 0x8(%rcx,%r9,8), %rcx    #  102   0x196  5      OPC=leaq_r64_m16        
.L_19b:                         #        0x19b  0      OPC=<label>             
  andl $0x7, %edx               #  103   0x19b  3      OPC=andl_r32_imm8       
.L_19e:                         #        0x19e  0      OPC=<label>             
  testl %edx, %edx              #  104   0x19e  2      OPC=testl_r32_r32       
  je .L_1b4                     #  105   0x1a0  2      OPC=je_label            
  nop                           #  106   0x1a2  1      OPC=nop                 
  nop                           #  107   0x1a3  1      OPC=nop                 
  nop                           #  108   0x1a4  1      OPC=nop                 
  nop                           #  109   0x1a5  1      OPC=nop                 
  nop                           #  110   0x1a6  1      OPC=nop                 
  nop                           #  111   0x1a7  1      OPC=nop                 
.L_1a8:                         #        0x1a8  0      OPC=<label>             
  movb %sil, (%rcx)             #  112   0x1a8  3      OPC=movb_m8_r8          
  addq $0x1, %rcx               #  113   0x1ab  4      OPC=addq_r64_imm8       
  subl $0x1, %edx               #  114   0x1af  3      OPC=subl_r32_imm8       
  jne .L_1a8                    #  115   0x1b2  2      OPC=jne_label           
.L_1b4:                         #        0x1b4  0      OPC=<label>             
  popq %rbx                     #  116   0x1b4  1      OPC=popq_r64_1          
  popq %rbp                     #  117   0x1b5  1      OPC=popq_r64_1          
  popq %r12                     #  118   0x1b6  2      OPC=popq_r64_1          
  popq %r13                     #  119   0x1b8  2      OPC=popq_r64_1          
  retq                          #  120   0x1ba  1      OPC=retq                
  nop                           #  121   0x1bb  1      OPC=nop                 
  nop                           #  122   0x1bc  1      OPC=nop                 
  nop                           #  123   0x1bd  1      OPC=nop                 
  nop                           #  124   0x1be  1      OPC=nop                 
  nop                           #  125   0x1bf  1      OPC=nop                 
.L_1c0:                         #        0x1c0  0      OPC=<label>             
  testl %edi, %edi              #  126   0x1c0  2      OPC=testl_r32_r32       
  jne .L_252                    #  127   0x1c2  6      OPC=jne_label_1         
  movq %rcx, %rdi               #  128   0x1c8  3      OPC=movq_r64_r64        
  xorl %ebx, %ebx               #  129   0x1cb  2      OPC=xorl_r32_r32        
  movl $0x7, %r12d              #  130   0x1cd  6      OPC=movl_r32_imm32      
  movl $0x3, %r11d              #  131   0x1d3  6      OPC=movl_r32_imm32      
  movl $0x6, %r13d              #  132   0x1d9  6      OPC=movl_r32_imm32      
.L_1df:                         #        0x1df  0      OPC=<label>             
  movq %r8, -0x10(%rsp)         #  133   0x1df  5      OPC=movq_m64_r64        
  leaq (%rcx,%rbx,8), %rbp      #  134   0x1e4  4      OPC=leaq_r64_m16        
  xorl %r10d, %r10d             #  135   0x1e8  3      OPC=xorl_r32_r32        
  movq -0x10(%rsp), %xmm0       #  136   0x1eb  6      OPC=movq_xmm_m64_1      
  punpcklqdq %xmm0, %xmm0       #  137   0x1f1  4      OPC=punpcklqdq_xmm_xmm  
.L_1f5:                         #        0x1f5  0      OPC=<label>             
  movq %r10, %rbx               #  138   0x1f5  3      OPC=movq_r64_r64        
  addq $0x1, %r10               #  139   0x1f8  4      OPC=addq_r64_imm8       
  shlq $0x4, %rbx               #  140   0x1fc  4      OPC=shlq_r64_imm8       
  cmpl %r10d, %r11d             #  141   0x200  3      OPC=cmpl_r32_r32        
  movaps %xmm0, (%rbx,%rbp,1)   #  142   0x203  4      OPC=movaps_m128_xmm     
  ja .L_1f5                     #  143   0x207  2      OPC=ja_label            
  movl %r13d, %r10d             #  144   0x209  3      OPC=movl_r32_r32        
  cmpl %r13d, %r12d             #  145   0x20c  3      OPC=cmpl_r32_r32        
  leaq (%rdi,%r10,8), %rdi      #  146   0x20f  4      OPC=leaq_r64_m16        
  jne .L_18f                    #  147   0x213  6      OPC=jne_label_1         
  jmpq .L_192                   #  148   0x219  5      OPC=jmpq_label_1        
.L_21e:                         #        0x21e  0      OPC=<label>             
  movl %r9d, %r10d              #  149   0x21e  3      OPC=movl_r32_r32        
  jmpq .L_16b                   #  150   0x221  5      OPC=jmpq_label_1        
.L_226:                         #        0x226  0      OPC=<label>             
  movl $0x4, %r10d              #  151   0x226  6      OPC=movl_r32_imm32      
  jmpq .L_16b                   #  152   0x22c  5      OPC=jmpq_label_1        
.L_231:                         #        0x231  0      OPC=<label>             
  movl $0x3, %r10d              #  153   0x231  6      OPC=movl_r32_imm32      
  jmpq .L_16b                   #  154   0x237  5      OPC=jmpq_label_1        
.L_23c:                         #        0x23c  0      OPC=<label>             
  movl $0x2, %r10d              #  155   0x23c  6      OPC=movl_r32_imm32      
  jmpq .L_16b                   #  156   0x242  5      OPC=jmpq_label_1        
.L_247:                         #        0x247  0      OPC=<label>             
  movl $0x1, %r10d              #  157   0x247  6      OPC=movl_r32_imm32      
  jmpq .L_16b                   #  158   0x24d  5      OPC=jmpq_label_1        
.L_252:                         #        0x252  0      OPC=<label>             
  movl $0x1, %r10d              #  159   0x252  6      OPC=movl_r32_imm32      
  movq %r8, (%rcx)              #  160   0x258  3      OPC=movq_m64_r64        
  leaq 0x8(%rcx), %rdi          #  161   0x25b  4      OPC=leaq_r64_m16        
  jmpq .L_16b                   #  162   0x25f  5      OPC=jmpq_label_1        
                                                                               
.size libc_memset, .-libc_memset


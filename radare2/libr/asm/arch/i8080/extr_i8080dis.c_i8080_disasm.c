
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int const mask; int const shift; scalar_t__ type; } ;
struct opcode_t {int size; int const cmd; TYPE_1__ arg2; TYPE_1__ arg1; int name; } ;


 int arg (char*,int const,TYPE_1__*,int const) ;
 struct opcode_t* opcodes ;
 int snprintf (char*,int,char*,int const) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int i8080_disasm(unsigned char const* const code, char* text, int text_sz) {
  int const cmd = code[0];
  int const p = code[1] | (code[2] << 8);

  struct opcode_t const *op;
  for (op = &opcodes[0]; op->size; ++op) {
    int const grp = cmd &
      ~((op->arg1.mask << op->arg1.shift) |
       (op->arg2.mask << op->arg2.shift));
    int const branch = (grp == 0xc0 || grp == 0xc2 || grp == 0xc4);
    if (grp == op->cmd) {
      strcpy(text, op->name);
      if (!branch) strcat(text, " ");
      arg(text + strlen(text), cmd, &op->arg1, p);
      if (op->arg2.type != 0) strcat(text, (branch ? " " : ", "));
      arg(text + strlen(text), cmd, &op->arg2, p);
      return op->size;
    }
  }
  snprintf(text, text_sz, "db 0x%02x", cmd);
  return 1;
}

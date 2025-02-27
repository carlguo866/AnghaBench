
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* codeBase; unsigned int codeLength; scalar_t__ instructionPointers; } ;
typedef TYPE_1__ vm_t ;
struct TYPE_6__ {unsigned int* CallThunk; unsigned int* iPointers; int dataLength; int codeLength; int * data; int ErrJump; int BlockCopy; int AsmCall; } ;
typedef TYPE_2__ vm_data_t ;
struct jump_insn {size_t jump_dest_insn; struct jump_insn* next; int jump_iname; scalar_t__ parent; } ;
struct func_info {int data_num; int * dst_last; struct dst_insn* dst_first; struct dst_insn* data_first; void** dst_by_i_count; struct jump_insn* jump_first; } ;
struct dst_insn {int length; int i_count; int count; struct dst_insn* jump; struct dst_insn* next; int * data; void* parent; int * code; } ;
struct data_hunk {int length; int i_count; int count; struct data_hunk* jump; struct data_hunk* next; int * data; void* parent; int * code; } ;


 int CALL_THUNK_INSN_OFFSET ;
 int Com_Printf (char*,...) ;
 int DIE (char*) ;
 int ErrJump ;
 unsigned int IN (int ,int) ;
 int MAP_ANONYMOUS ;
 unsigned char* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 unsigned int SPARC_NOP ;
 int THUNK_ICOUNT ;
 int VM_Data_Offset (TYPE_2__) ;
 int Z_Free (struct dst_insn*) ;
 int asmcall ;
 int blockcopy ;
 int memcpy (unsigned int*,int *,int) ;
 unsigned char* mmap (int *,unsigned int,int,int,int,int ) ;

__attribute__((used)) static void sparc_compute_code(vm_t *vm, struct func_info * const fp)
{
 struct dst_insn *dp = fp->dst_first;
 unsigned int *code_now, *code_begin;
 unsigned char *data_and_code;
 unsigned int code_length;
 int code_insns = 0, off;
 struct data_hunk *dhp;
 struct jump_insn *jp;
 vm_data_t *data;

 while (dp) {
  code_insns += dp->length;
  dp = dp->next;
 }

 code_length = (sizeof(vm_data_t) +
         (fp->data_num * sizeof(unsigned int)) +
         (code_insns * sizeof(unsigned int)));

 data_and_code = mmap(((void*)0), code_length, PROT_READ | PROT_WRITE,
        MAP_SHARED | MAP_ANONYMOUS, -1, 0);
 if (data_and_code == MAP_FAILED)
  DIE("Not enough memory");

 code_now = code_begin = (unsigned int *)
  (data_and_code + VM_Data_Offset(data[fp->data_num]));

 dp = fp->dst_first;
 while (dp) {
  int i_count = dp->i_count;

  if (i_count != THUNK_ICOUNT) {
   if (!fp->dst_by_i_count[i_count])
    fp->dst_by_i_count[i_count] = (void *) code_now;
  }
  if (!dp->jump) {
   memcpy(code_now, &dp->code[0], dp->length * sizeof(unsigned int));
   code_now += dp->length;
  } else {
   int i;

   dp->jump->parent = (void *) code_now;

   for (i = 0; i < dp->length; i++)
    code_now[i] = SPARC_NOP;
   code_now += dp->length;
  }

  dp = dp->next;
 }

 jp = fp->jump_first;
 while (jp) {
  unsigned int *from = (void *) jp->parent;
  unsigned int *to = (void *) fp->dst_by_i_count[jp->jump_dest_insn];
  signed int disp = (to - from);

  *from = IN(jp->jump_iname, disp << 2);

  jp = jp->next;
 }

 vm->codeBase = data_and_code;
 vm->codeLength = code_length;

 data = (vm_data_t *) data_and_code;
 data->CallThunk = code_begin + CALL_THUNK_INSN_OFFSET;
 data->AsmCall = asmcall;
 data->BlockCopy = blockcopy;
 data->iPointers = (unsigned int *) vm->instructionPointers;
 data->dataLength = VM_Data_Offset(data[fp->data_num]);
 data->codeLength = (code_now - code_begin) * sizeof(unsigned int);
 data->ErrJump = ErrJump;
 dhp = fp->data_first;
 off = 0;
 while (dhp) {
  struct data_hunk *next = dhp->next;
  int i;

  for (i = 0; i < dhp->count; i++)
   data->data[off + i] = dhp->data[i];

  off += dhp->count;

  Z_Free(dhp);

  dhp = next;
 }
 fp->data_first = ((void*)0);
 fp->data_num = 0;

 dp = fp->dst_first;
 while (dp) {
  struct dst_insn *next = dp->next;
  if (dp->jump)
   Z_Free(dp->jump);
  Z_Free(dp);
  dp = next;
 }
 fp->dst_first = fp->dst_last = ((void*)0);
}

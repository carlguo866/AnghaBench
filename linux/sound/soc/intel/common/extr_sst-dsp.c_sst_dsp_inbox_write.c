
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int in_base; } ;
struct sst_dsp {TYPE_1__ mailbox; } ;


 int memcpy_toio (int ,void*,size_t) ;
 int trace_sst_ipc_inbox_wdata (size_t,size_t) ;
 int trace_sst_ipc_inbox_write (size_t) ;

void sst_dsp_inbox_write(struct sst_dsp *sst, void *message, size_t bytes)
{
 u32 i;

 trace_sst_ipc_inbox_write(bytes);

 memcpy_toio(sst->mailbox.in_base, message, bytes);

 for (i = 0; i < bytes; i += 4)
  trace_sst_ipc_inbox_wdata(i, *(u32 *)(message + i));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps_err_e ;
typedef int paddr_t ;
typedef int gdb_ps_size_t ;
typedef int gdb_ps_read_buf_t ;
typedef int gdb_ps_prochandle_t ;


 int PS_OK ;
 int read_inferior_memory (int ,int ,int ) ;

ps_err_e
ps_pdread (gdb_ps_prochandle_t ph, paddr_t addr,
    gdb_ps_read_buf_t buf, gdb_ps_size_t size)
{
  read_inferior_memory (addr, buf, size);
  return PS_OK;
}

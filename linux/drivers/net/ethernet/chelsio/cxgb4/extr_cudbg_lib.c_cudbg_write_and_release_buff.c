
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_init {scalar_t__ compress_type; } ;
struct cudbg_buffer {int dummy; } ;


 scalar_t__ CUDBG_COMPRESSION_NONE ;
 int cudbg_do_compression (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 int cudbg_put_buff (struct cudbg_init*,struct cudbg_buffer*) ;
 int cudbg_update_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int cudbg_write_and_release_buff(struct cudbg_init *pdbg_init,
     struct cudbg_buffer *pin_buff,
     struct cudbg_buffer *dbg_buff)
{
 int rc = 0;

 if (pdbg_init->compress_type == CUDBG_COMPRESSION_NONE) {
  cudbg_update_buff(pin_buff, dbg_buff);
 } else {
  rc = cudbg_do_compression(pdbg_init, pin_buff, dbg_buff);
  if (rc)
   goto out;
 }

out:
 cudbg_put_buff(pdbg_init, pin_buff);
 return rc;
}

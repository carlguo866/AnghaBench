
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_init {int dummy; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int dummy; } ;


 int read_cim_obq (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_error*,int) ;

__attribute__((used)) static int collect_obq_sge_rx_q0(struct cudbg_init *pdbg_init,
     struct cudbg_buffer *dbg_buff,
     struct cudbg_error *cudbg_err)
{
 int rc = 0, qid = 6;

 rc = read_cim_obq(pdbg_init, dbg_buff, cudbg_err, qid);

 return rc;
}

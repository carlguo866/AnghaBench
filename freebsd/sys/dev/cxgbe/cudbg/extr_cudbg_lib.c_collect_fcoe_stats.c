
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct struct_tp_fcoe_stats {int * stats; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {scalar_t__ nchan; } ;


 scalar_t__ NCHAN ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_get_fcoe_stats (struct adapter*,int,int *,int) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_fcoe_stats(struct cudbg_init *pdbg_init,
         struct cudbg_buffer *dbg_buff,
         struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 struct struct_tp_fcoe_stats *tp_fcoe_stats_buff;
 u32 size;
 int rc = 0;

 size = sizeof(struct struct_tp_fcoe_stats);

 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 tp_fcoe_stats_buff = (struct struct_tp_fcoe_stats *) scratch_buff.data;


 t4_get_fcoe_stats(padap, 0, &tp_fcoe_stats_buff->stats[0], 1);
 t4_get_fcoe_stats(padap, 1, &tp_fcoe_stats_buff->stats[1], 1);
 if (padap->chip_params->nchan == NCHAN) {
  t4_get_fcoe_stats(padap, 2, &tp_fcoe_stats_buff->stats[2], 1);
  t4_get_fcoe_stats(padap, 3, &tp_fcoe_stats_buff->stats[3], 1);
 }


 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);
err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}

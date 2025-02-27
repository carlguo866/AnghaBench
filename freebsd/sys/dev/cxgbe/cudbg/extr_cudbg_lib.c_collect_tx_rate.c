
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tx_rate {int nchan; int orate; int nrate; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int size; scalar_t__ data; } ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int nchan; } ;


 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_get_chan_txrate (struct adapter*,int ,int ) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_tx_rate(struct cudbg_init *pdbg_init,
      struct cudbg_buffer *dbg_buff,
      struct cudbg_error *cudbg_err)
{
 struct cudbg_buffer scratch_buff;
 struct adapter *padap = pdbg_init->adap;
 struct tx_rate *tx_rate;
 u32 size;
 int rc;

 size = sizeof(struct tx_rate);
 scratch_buff.size = size;

 rc = get_scratch_buff(dbg_buff, scratch_buff.size, &scratch_buff);
 if (rc)
  goto err;

 tx_rate = (struct tx_rate *)scratch_buff.data;
 t4_get_chan_txrate(padap, tx_rate->nrate, tx_rate->orate);
 tx_rate->nchan = padap->chip_params->nchan;

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);

err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}

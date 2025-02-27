
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct struct_meminfo {int dummy; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct adapter {int dummy; } ;


 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int fill_meminfo (struct adapter*,struct struct_meminfo*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_meminfo(struct cudbg_init *pdbg_init,
      struct cudbg_buffer *dbg_buff,
      struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 struct struct_meminfo *meminfo_buff;
 int rc = 0;
 u32 size;

 size = sizeof(struct struct_meminfo);

 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 meminfo_buff = (struct struct_meminfo *)scratch_buff.data;

 rc = fill_meminfo(padap, meminfo_buff);
 if (rc)
  goto err;

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);
err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}

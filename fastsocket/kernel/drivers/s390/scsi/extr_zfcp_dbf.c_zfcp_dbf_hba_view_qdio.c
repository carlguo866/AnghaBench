
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_dbf_hba_record_qdio {int scount; int fsf_reqid; int sbal_count; int sbal_index; int qdio_error; } ;


 int zfcp_dbf_out (char**,char*,char*,int ) ;

__attribute__((used)) static void zfcp_dbf_hba_view_qdio(char **p, struct zfcp_dbf_hba_record_qdio *r)
{
 zfcp_dbf_out(p, "qdio_error", "0x%08x", r->qdio_error);
 zfcp_dbf_out(p, "sbal_index", "0x%02x", r->sbal_index);
 zfcp_dbf_out(p, "sbal_count", "0x%02x", r->sbal_count);
 zfcp_dbf_out(p, "fsf_reqid", "0x%0Lx", r->fsf_reqid);
 zfcp_dbf_out(p, "scount", "0x%02x", r->scount);
}

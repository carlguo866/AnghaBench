
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct asd_ha_struct {int dummy; } ;


 int asd_ddbsite_read_word (struct asd_ha_struct*,int,int) ;
 int asd_ddbsite_write_word (struct asd_ha_struct*,int,int,int) ;

__attribute__((used)) static inline void asd_ddbsite_write_byte(struct asd_ha_struct *asd_ha,
       u16 ddb_site_no,
       u16 offs, u8 val)
{
 u16 base = offs & ~1;
 u16 rval = asd_ddbsite_read_word(asd_ha, ddb_site_no, base);
 if (offs & 1)
  rval = (val << 8) | (rval & 0xFF);
 else
  rval = (rval & 0xFF00) | val;
 asd_ddbsite_write_word(asd_ha, ddb_site_no, base, rval);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int NDISC_OPT_SPACE (int) ;
 int memcpy (int*,void*,int) ;
 int memset (int*,int ,int) ;
 int ndisc_addr_option_pad (unsigned short) ;

__attribute__((used)) static u8 *ndisc_fill_addr_option(u8 *opt, int type, void *data, int data_len,
      unsigned short addr_type)
{
 int space = NDISC_OPT_SPACE(data_len);
 int pad = ndisc_addr_option_pad(addr_type);

 opt[0] = type;
 opt[1] = space>>3;

 memset(opt + 2, 0, pad);
 opt += pad;
 space -= pad;

 memcpy(opt+2, data, data_len);
 data_len += 2;
 opt += data_len;
 if ((space -= data_len) > 0)
  memset(opt, 0, space);
 return opt + space;
}

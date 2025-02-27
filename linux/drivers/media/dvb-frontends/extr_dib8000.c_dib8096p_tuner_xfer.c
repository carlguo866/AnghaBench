
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int u16 ;
struct i2c_msg {int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct dib8000_state {int dummy; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dib8096p_rw_on_apb (struct i2c_adapter*,struct i2c_msg*,int,int) ;
 int dib8096p_tuner_rw_serpar (struct i2c_adapter*,struct i2c_msg*,int) ;
 struct dib8000_state* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int dib8096p_tuner_xfer(struct i2c_adapter *i2c_adap,
  struct i2c_msg msg[], int num)
{
 struct dib8000_state *state = i2c_get_adapdata(i2c_adap);
 u16 apb_address = 0, word;
 int i = 0;

 switch (msg[0].buf[0]) {
 case 0x12:
   apb_address = 1920;
   break;
 case 0x14:
   apb_address = 1921;
   break;
 case 0x24:
   apb_address = 1922;
   break;
 case 0x1a:
   apb_address = 1923;
   break;
 case 0x22:
   apb_address = 1924;
   break;
 case 0x33:
   apb_address = 1926;
   break;
 case 0x34:
   apb_address = 1927;
   break;
 case 0x35:
   apb_address = 1928;
   break;
 case 0x36:
   apb_address = 1929;
   break;
 case 0x37:
   apb_address = 1930;
   break;
 case 0x38:
   apb_address = 1931;
   break;
 case 0x39:
   apb_address = 1932;
   break;
 case 0x2a:
   apb_address = 1935;
   break;
 case 0x2b:
   apb_address = 1936;
   break;
 case 0x2c:
   apb_address = 1937;
   break;
 case 0x2d:
   apb_address = 1938;
   break;
 case 0x2e:
   apb_address = 1939;
   break;
 case 0x2f:
   apb_address = 1940;
   break;
 case 0x30:
   apb_address = 1941;
   break;
 case 0x31:
   apb_address = 1942;
   break;
 case 0x32:
   apb_address = 1943;
   break;
 case 0x3e:
   apb_address = 1944;
   break;
 case 0x3f:
   apb_address = 1945;
   break;
 case 0x40:
   apb_address = 1948;
   break;
 case 0x25:
   apb_address = 936;
   break;
 case 0x26:
   apb_address = 937;
   break;
 case 0x27:
   apb_address = 938;
   break;
 case 0x28:
   apb_address = 939;
   break;
 case 0x1d:

   i = ((dib8000_read_word(state, 921) >> 12)&0x3);
   word = dib8000_read_word(state, 924+i);
   msg[1].buf[0] = (word >> 8) & 0xff;
   msg[1].buf[1] = (word) & 0xff;
   return num;
 case 0x1f:
   if (num == 1) {
    word = (u16) ((msg[0].buf[1] << 8) |
      msg[0].buf[2]);

    word &= 0x3;
    word = (dib8000_read_word(state, 921) &
      ~(3<<12)) | (word<<12);

    dib8000_write_word(state, 921, word);
    return num;
   }
 }

 if (apb_address != 0)
  return dib8096p_rw_on_apb(i2c_adap, msg, num, apb_address);
 else
  return dib8096p_tuner_rw_serpar(i2c_adap, msg, num);

 return 0;
}

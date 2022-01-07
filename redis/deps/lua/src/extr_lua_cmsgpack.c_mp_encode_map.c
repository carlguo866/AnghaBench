
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;
typedef int int64_t ;


 int mp_buf_append (int *,int *,unsigned char*,int) ;

void mp_encode_map(lua_State *L, mp_buf *buf, int64_t n) {
    unsigned char b[5];
    int enclen;

    if (n <= 15) {
        b[0] = 0x80 | (n & 0xf);
        enclen = 1;
    } else if (n <= 65535) {
        b[0] = 0xde;
        b[1] = (n & 0xff00) >> 8;
        b[2] = n & 0xff;
        enclen = 3;
    } else {
        b[0] = 0xdf;
        b[1] = (n & 0xff000000) >> 24;
        b[2] = (n & 0xff0000) >> 16;
        b[3] = (n & 0xff00) >> 8;
        b[4] = n & 0xff;
        enclen = 5;
    }
    mp_buf_append(L,buf,b,enclen);
}

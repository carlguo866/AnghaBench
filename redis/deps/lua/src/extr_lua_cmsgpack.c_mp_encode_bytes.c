
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;


 int mp_buf_append (int *,int *,unsigned char const*,size_t) ;

void mp_encode_bytes(lua_State *L, mp_buf *buf, const unsigned char *s, size_t len) {
    unsigned char hdr[5];
    int hdrlen;

    if (len < 32) {
        hdr[0] = 0xa0 | (len&0xff);
        hdrlen = 1;
    } else if (len <= 0xff) {
        hdr[0] = 0xd9;
        hdr[1] = len;
        hdrlen = 2;
    } else if (len <= 0xffff) {
        hdr[0] = 0xda;
        hdr[1] = (len&0xff00)>>8;
        hdr[2] = len&0xff;
        hdrlen = 3;
    } else {
        hdr[0] = 0xdb;
        hdr[1] = (len&0xff000000)>>24;
        hdr[2] = (len&0xff0000)>>16;
        hdr[3] = (len&0xff00)>>8;
        hdr[4] = len&0xff;
        hdrlen = 5;
    }
    mp_buf_append(L,buf,hdr,hdrlen);
    mp_buf_append(L,buf,s,len);
}

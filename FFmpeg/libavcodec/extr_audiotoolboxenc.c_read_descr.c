
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;


 int bytestream2_get_byte (int *) ;

__attribute__((used)) static int read_descr(GetByteContext *gb, int *tag)
{
    int len = 0;
    int count = 4;
    *tag = bytestream2_get_byte(gb);
    while (count--) {
        int c = bytestream2_get_byte(gb);
        len = (len << 7) | (c & 0x7f);
        if (!(c & 0x80))
            break;
    }
    return len;
}

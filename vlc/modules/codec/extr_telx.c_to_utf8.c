
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static void to_utf8( char * res, uint16_t ch )
{
    if( ch >= 0x80 )
    {
        if( ch >= 0x800 )
        {
            res[0] = (ch >> 12) | 0xE0;
            res[1] = ((ch >> 6) & 0x3F) | 0x80;
            res[2] = (ch & 0x3F) | 0x80;
            res[3] = 0;
        }
        else
        {
            res[0] = (ch >> 6) | 0xC0;
            res[1] = (ch & 0x3F) | 0x80;
            res[2] = 0;
        }
    }
    else
    {
        res[0] = ch;
        res[1] = 0;
    }
}

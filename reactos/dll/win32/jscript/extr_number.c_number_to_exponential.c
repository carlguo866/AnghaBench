
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef char WCHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int NUMBER_DTOA_SIZE ;
 scalar_t__ TRUE ;
 int * jsstr_alloc_buf (int,char**) ;
 int number_to_str (double,char*,int,int*) ;

__attribute__((used)) static inline jsstr_t *number_to_exponential(double val, int prec)
{
    WCHAR buf[NUMBER_DTOA_SIZE], *pbuf;
    int dec_point, size, buf_size, exp_size = 1;
    BOOL neg = FALSE;
    jsstr_t *ret;
    WCHAR *str;

    if(val < 0) {
        neg = TRUE;
        val = -val;
    }

    buf_size = prec+2;
    if(buf_size<2 || buf_size>NUMBER_DTOA_SIZE)
        buf_size = NUMBER_DTOA_SIZE;
    number_to_str(val, buf, buf_size, &dec_point);
    buf_size--;
    if(prec == -1)
        for(; buf_size>1 && buf[buf_size-1]=='0'; buf_size--)
            buf[buf_size-1] = 0;

    size = 10;
    while(dec_point>=size || dec_point<=-size) {
        size *= 10;
        exp_size++;
    }

    if(buf_size == 1)
        size = buf_size+2+exp_size;
    else if(prec == -1)
        size = buf_size+3+exp_size;
    else
        size = prec+4+exp_size;
    if(neg)
        size++;

    ret = jsstr_alloc_buf(size, &str);
    if(!ret)
        return ((void*)0);

    size = 0;
    pbuf = buf;
    if(neg)
        str[size++] = '-';
    str[size++] = *pbuf++;
    if(buf_size != 1) {
        str[size++] = '.';
        while(*pbuf)
            str[size++] = *pbuf++;
        for(; prec>buf_size-1; prec--)
            str[size++] = '0';
    }
    str[size++] = 'e';
    if(dec_point >= 0) {
        str[size++] = '+';
    }else {
        str[size++] = '-';
        dec_point = -dec_point;
    }
    size += exp_size;
    do {
        str[--size] = '0'+dec_point%10;
        dec_point /= 10;
    }while(dec_point>0);
    size += exp_size;
    str[size] = 0;

    return ret;
}

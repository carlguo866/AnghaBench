
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ uint32 ;


 scalar_t__ UINT32_MAX ;
 scalar_t__ errno ;
 scalar_t__ strtoumax (char const*,char**,int) ;

__attribute__((used)) static int
read_u32(uint32 *num, const char *buf, char **end)
{
    uintmax_t tnum;
    char *tend;

    errno = 0;
    while (buf[0] == ' ')
        buf++;
    if (buf[0] < '0' || '9' < buf[0])
        return -1;
    tnum = strtoumax(buf, &tend, 10);
    if (tend == buf)
        return -1;
    if (errno)
        return -1;
    if (!end && tend[0] != '\0')
        return -1;
    if (tnum > UINT32_MAX)
        return -1;

    if (num) *num = (uint32)tnum;
    if (end) *end = tend;
    return 0;
}

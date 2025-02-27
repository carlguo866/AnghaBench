
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_page; } ;
typedef TYPE_1__ HLPFILE ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ const HLP_DISPLAY ;
 scalar_t__ const HLP_TABLE ;
 int TRUE ;
 int WINE_WARN (char*) ;
 int fetch_long (scalar_t__ const**) ;
 unsigned int fetch_ushort (scalar_t__ const**) ;

__attribute__((used)) static BOOL HLPFILE_SkipParagraph(HLPFILE *hlpfile, const BYTE *buf, const BYTE *end, unsigned* len)
{
    const BYTE *tmp;

    if (!hlpfile->first_page) {WINE_WARN("no page\n"); return FALSE;};
    if (buf + 0x19 > end) {WINE_WARN("header too small\n"); return FALSE;};

    tmp = buf + 0x15;
    if (buf[0x14] == HLP_DISPLAY || buf[0x14] == HLP_TABLE)
    {
        fetch_long(&tmp);
        *len = fetch_ushort(&tmp);
    }
    else *len = end-buf-15;

    return TRUE;
}

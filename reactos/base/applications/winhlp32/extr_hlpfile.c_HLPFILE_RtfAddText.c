
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RtfData {scalar_t__ in_text; } ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int HLPFILE_RtfAddRawString (struct RtfData*,char const*,int) ;
 scalar_t__ TRUE ;
 unsigned int sprintf (char*,char*,int const) ;

__attribute__((used)) static BOOL HLPFILE_RtfAddText(struct RtfData* rd, const char* str)
{
    const char* p;
    const char* last;
    const char* replace;
    unsigned rlen;

    if (!rd->in_text)
    {
        if (!HLPFILE_RtfAddRawString(rd, " ", 1)) return FALSE;
        rd->in_text = TRUE;
    }
    for (last = p = str; *p; p++)
    {
        if (*p & 0x80)
        {
            static char xx[8];
            rlen = sprintf(xx, "\\'%x", *(const BYTE*)p);
            replace = xx;
        }
        else switch (*p)
        {
        case '{': rlen = 2; replace = "\\{"; break;
        case '}': rlen = 2; replace = "\\}"; break;
        case '\\': rlen = 2; replace = "\\\\"; break;
        default: continue;
        }
        if ((p != last && !HLPFILE_RtfAddRawString(rd, last, p - last)) ||
            !HLPFILE_RtfAddRawString(rd, replace, rlen)) return FALSE;
        last = p + 1;
    }
    return HLPFILE_RtfAddRawString(rd, last, p - last);
}

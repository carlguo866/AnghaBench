
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* buf; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ attr; } ;
struct TYPE_5__ {int count; } ;
typedef int HPDF_UINT ;
typedef TYPE_2__* HPDF_Stream ;
typedef TYPE_3__* HPDF_MemStreamAttr ;


 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_STREAM_MEMORY ;

HPDF_UINT
HPDF_MemStream_GetBufCount (HPDF_Stream stream)
{
    HPDF_MemStreamAttr attr;

    HPDF_PTRACE((" HPDF_MemStream_GetBufCount\n"));

    if (!stream || stream->type != HPDF_STREAM_MEMORY)
        return 0;

    attr = (HPDF_MemStreamAttr)stream->attr;
    return attr->buf->count;
}

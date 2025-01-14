
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int count; } ;
struct TYPE_6__ {int w_pos; int buf_siz; TYPE_4__* buf; } ;
struct TYPE_5__ {scalar_t__ type; int error; scalar_t__ attr; } ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef TYPE_2__* HPDF_MemStreamAttr ;
typedef int HPDF_BYTE ;


 int HPDF_INVALID_OBJECT ;
 int HPDF_INVALID_PARAMETER ;
 scalar_t__ HPDF_List_ItemAt (TYPE_4__*,int) ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_STREAM_MEMORY ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_BYTE*
HPDF_MemStream_GetBufPtr (HPDF_Stream stream,
                           HPDF_UINT index,
                           HPDF_UINT *length)
{
    HPDF_BYTE *ret;
    HPDF_MemStreamAttr attr;

    HPDF_PTRACE((" HPDF_MemStream_GetBufPtr\n"));

    if (stream->type != HPDF_STREAM_MEMORY) {
        HPDF_SetError (stream->error, HPDF_INVALID_OBJECT, 0);
        return ((void*)0);
    }

    attr = (HPDF_MemStreamAttr)stream->attr;

    ret = (HPDF_BYTE *)HPDF_List_ItemAt (attr->buf, index);
    if (ret == ((void*)0)) {
        HPDF_SetError (stream->error, HPDF_INVALID_PARAMETER, 0);
        *length = 0;
        return ((void*)0);
    }

    *length = (attr->buf->count - 1 == index) ? attr->w_pos : attr->buf_siz;
    return ret;
}

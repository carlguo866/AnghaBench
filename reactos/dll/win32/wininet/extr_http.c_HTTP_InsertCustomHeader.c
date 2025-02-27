
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nCustHeaders; TYPE_2__* custHeaders; } ;
typedef TYPE_1__ http_request_t ;
struct TYPE_9__ {int wCount; int wFlags; void* lpszValue; void* lpszField; } ;
typedef TYPE_2__* LPHTTPHEADERW ;
typedef int INT ;
typedef int HTTPHEADERW ;
typedef int DWORD ;


 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (void*) ;
 TYPE_2__* heap_alloc_zero (int) ;
 TYPE_2__* heap_realloc_zero (TYPE_2__*,int) ;
 void* heap_strdupW (void*) ;

__attribute__((used)) static DWORD HTTP_InsertCustomHeader(http_request_t *request, LPHTTPHEADERW lpHdr)
{
    INT count;
    LPHTTPHEADERW lph = ((void*)0);

    TRACE("--> %s: %s\n", debugstr_w(lpHdr->lpszField), debugstr_w(lpHdr->lpszValue));
    count = request->nCustHeaders + 1;
    if (count > 1)
 lph = heap_realloc_zero(request->custHeaders, sizeof(HTTPHEADERW) * count);
    else
 lph = heap_alloc_zero(sizeof(HTTPHEADERW) * count);

    if (!lph)
        return ERROR_OUTOFMEMORY;

    request->custHeaders = lph;
    request->custHeaders[count-1].lpszField = heap_strdupW(lpHdr->lpszField);
    request->custHeaders[count-1].lpszValue = heap_strdupW(lpHdr->lpszValue);
    request->custHeaders[count-1].wFlags = lpHdr->wFlags;
    request->custHeaders[count-1].wCount= lpHdr->wCount;
    request->nCustHeaders++;

    return ERROR_SUCCESS;
}

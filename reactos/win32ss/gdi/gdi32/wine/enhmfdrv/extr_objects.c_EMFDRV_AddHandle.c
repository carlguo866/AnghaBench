
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t handles_size; scalar_t__* handles; scalar_t__ cur_handles; TYPE_1__* emh; } ;
struct TYPE_4__ {scalar_t__ nHandles; } ;
typedef int PHYSDEV ;
typedef int HGDIOBJ ;
typedef TYPE_2__ EMFDRV_PDEVICE ;


 int GetProcessHeap () ;
 scalar_t__ HANDLE_LIST_INC ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__* HeapReAlloc (int ,int ,scalar_t__*,int) ;
 TYPE_2__* get_emf_physdev (int ) ;
 scalar_t__ get_full_gdi_handle (int ) ;

__attribute__((used)) static UINT EMFDRV_AddHandle( PHYSDEV dev, HGDIOBJ obj )
{
    EMFDRV_PDEVICE *physDev = get_emf_physdev( dev );
    UINT index;

    for(index = 0; index < physDev->handles_size; index++)
        if(physDev->handles[index] == 0) break;
    if(index == physDev->handles_size) {
        physDev->handles_size += HANDLE_LIST_INC;
 physDev->handles = HeapReAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
           physDev->handles,
           physDev->handles_size * sizeof(physDev->handles[0]));
    }
    physDev->handles[index] = get_full_gdi_handle( obj );

    physDev->cur_handles++;
    if(physDev->cur_handles > physDev->emh->nHandles)
        physDev->emh->nHandles++;

    return index + 1;
}

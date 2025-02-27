
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_8__ {struct TYPE_8__* kext; struct TYPE_8__* interface; } ;
typedef TYPE_1__ KXLDObject ;
typedef TYPE_1__ KXLDKext ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (TYPE_1__*) ;
 int finish ;
 int kxld_object_index_symbols_by_name (TYPE_1__*) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_kext_init(KXLDKext *kext, KXLDObject *kext_object,
    KXLDObject *interface_object)
{
    kern_return_t rval = KERN_FAILURE;

    check(kext);
    check(kext_object);

    kext->kext = kext_object;

    if (interface_object) {
        kext->interface = interface_object;

        rval = kxld_object_index_symbols_by_name(kext->kext);
        require_noerr(rval, finish);
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}

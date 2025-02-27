
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;
typedef scalar_t__ kxld_addr_t ;
typedef int kern_return_t ;
struct TYPE_18__ {scalar_t__ nitems; } ;
struct TYPE_17__ {scalar_t__ link_addr; int * name; } ;
struct TYPE_16__ {TYPE_8__ entries; int vtable; int is_32_bit; } ;
struct TYPE_14__ {scalar_t__ addr; int * name; } ;
struct TYPE_15__ {TYPE_1__ patched; } ;
typedef TYPE_2__ KXLDVTableEntry ;
typedef TYPE_3__ const KXLDVTable ;
typedef TYPE_4__ KXLDSym ;
typedef TYPE_3__ KXLDRelocator ;
typedef int KXLDDict ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (TYPE_3__ const*) ;
 int finish ;
 int get_vtable_base_sizes (int ,scalar_t__*,scalar_t__*) ;
 TYPE_2__* kxld_array_get_item (TYPE_8__*,scalar_t__) ;
 int kxld_array_init (TYPE_8__*,int,scalar_t__) ;
 TYPE_4__* kxld_dict_find (int const*,scalar_t__*) ;
 scalar_t__ kxld_relocator_get_pointer_at_addr (TYPE_3__ const*,int ,scalar_t__) ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static kern_return_t
init_by_entries(KXLDVTable *vtable, const KXLDRelocator *relocator,
    const KXLDDict *defined_cxx_symbols)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDVTableEntry *tmpentry = ((void*)0);
    KXLDSym *sym = ((void*)0);
    kxld_addr_t entry_value = 0;
    u_long entry_offset;
    u_int vtable_entry_size = 0;
    u_int vtable_header_size = 0;
    u_int nentries = 0;
    u_int i = 0;

    check(vtable);
    check(relocator);

    (void) get_vtable_base_sizes(relocator->is_32_bit,
        &vtable_entry_size, &vtable_header_size);



    entry_offset = vtable_header_size;
    while (1) {
        entry_value = kxld_relocator_get_pointer_at_addr(relocator,
            vtable->vtable, entry_offset);
        if (!entry_value) break;

        entry_offset += vtable_entry_size;
        ++nentries;
    }



    rval = kxld_array_init(&vtable->entries, sizeof(KXLDVTableEntry), nentries);
    require_noerr(rval, finish);



    for (i = 0, entry_offset = vtable_header_size;
         i < vtable->entries.nitems;
         ++i, entry_offset += vtable_entry_size)
    {
        entry_value = kxld_relocator_get_pointer_at_addr(relocator,
            vtable->vtable, entry_offset);





        tmpentry = kxld_array_get_item(&vtable->entries, i);
        sym = kxld_dict_find(defined_cxx_symbols, &entry_value);

        if (sym) {
            tmpentry->patched.name = sym->name;
            tmpentry->patched.addr = sym->link_addr;
        } else {
            tmpentry->patched.name = ((void*)0);
            tmpentry->patched.addr = 0;
        }
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}

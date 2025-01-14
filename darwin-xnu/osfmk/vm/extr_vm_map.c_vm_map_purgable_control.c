
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int vm_purgable_t ;
typedef TYPE_1__* vm_object_t ;
typedef TYPE_2__* vm_map_t ;
typedef int vm_map_offset_t ;
typedef TYPE_3__* vm_map_entry_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_19__ {int protection; scalar_t__ vme_end; scalar_t__ vme_start; int use_pmap; scalar_t__ is_sub_map; } ;
struct TYPE_18__ {scalar_t__ pmap; } ;
struct TYPE_17__ {scalar_t__ purgable; scalar_t__ vo_size; int vo_purgeable_volatilizer; } ;


 int KERN_INVALID_ADDRESS ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_PROTECTION_FAILURE ;
 int KERN_SUCCESS ;
 TYPE_1__* VME_OBJECT (TYPE_3__*) ;
 scalar_t__ VME_OFFSET (TYPE_3__*) ;
 TYPE_2__* VM_MAP_NULL ;
 TYPE_1__* VM_OBJECT_NULL ;
 int VM_PROT_WRITE ;
 int VM_PURGABLE_ALL_MASKS ;
 scalar_t__ VM_PURGABLE_DENY ;
 int VM_PURGABLE_GET_STATE ;
 scalar_t__ VM_PURGABLE_NONVOLATILE ;
 int VM_PURGABLE_PURGE_ALL ;
 int VM_PURGABLE_SET_STATE ;
 int VM_PURGABLE_SET_STATE_FROM_KERNEL ;
 int VM_PURGABLE_STATE_MASK ;
 int assert (int) ;
 scalar_t__ kernel_pmap ;
 int kernel_task ;
 int vm_map_lock_read (TYPE_2__*) ;
 int vm_map_lookup_entry (TYPE_2__*,int ,TYPE_3__**) ;
 int vm_map_unlock_read (TYPE_2__*) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_purgable_control (TYPE_1__*,int ,int*) ;
 int vm_object_unlock (TYPE_1__*) ;
 int vm_purgeable_object_purge_all () ;

kern_return_t
vm_map_purgable_control(
 vm_map_t map,
 vm_map_offset_t address,
 vm_purgable_t control,
 int *state)
{
 vm_map_entry_t entry;
 vm_object_t object;
 kern_return_t kr;
 boolean_t was_nonvolatile;





 if (map == VM_MAP_NULL)
  return(KERN_INVALID_ARGUMENT);

 if (control != VM_PURGABLE_SET_STATE &&
     control != VM_PURGABLE_GET_STATE &&
     control != VM_PURGABLE_PURGE_ALL &&
     control != VM_PURGABLE_SET_STATE_FROM_KERNEL)
  return(KERN_INVALID_ARGUMENT);

 if (control == VM_PURGABLE_PURGE_ALL) {
  vm_purgeable_object_purge_all();
  return KERN_SUCCESS;
 }

 if ((control == VM_PURGABLE_SET_STATE ||
      control == VM_PURGABLE_SET_STATE_FROM_KERNEL) &&
     (((*state & ~(VM_PURGABLE_ALL_MASKS)) != 0) ||
      ((*state & VM_PURGABLE_STATE_MASK) > VM_PURGABLE_STATE_MASK)))
  return(KERN_INVALID_ARGUMENT);

 vm_map_lock_read(map);

 if (!vm_map_lookup_entry(map, address, &entry) || entry->is_sub_map) {




  vm_map_unlock_read(map);
  return(KERN_INVALID_ADDRESS);
 }

 if ((entry->protection & VM_PROT_WRITE) == 0) {



  vm_map_unlock_read(map);
  return(KERN_PROTECTION_FAILURE);
 }

 object = VME_OBJECT(entry);
 if (object == VM_OBJECT_NULL ||
     object->purgable == VM_PURGABLE_DENY) {



  vm_map_unlock_read(map);
  return KERN_INVALID_ARGUMENT;
 }

 vm_object_lock(object);
 assert(!entry->is_sub_map);
 assert(!entry->use_pmap);

 vm_map_unlock_read(map);

 was_nonvolatile = (object->purgable == VM_PURGABLE_NONVOLATILE);

 kr = vm_object_purgable_control(object, control, state);

 if (was_nonvolatile &&
     object->purgable != VM_PURGABLE_NONVOLATILE &&
     map->pmap == kernel_pmap) {



 }

 vm_object_unlock(object);

 return kr;
}

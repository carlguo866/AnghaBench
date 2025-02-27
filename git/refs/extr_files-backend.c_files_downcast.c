
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_store {TYPE_1__* be; } ;
struct files_ref_store {unsigned int store_flags; } ;
struct TYPE_2__ {int name; } ;


 int BUG (char*,char const*,...) ;
 TYPE_1__ refs_be_files ;

__attribute__((used)) static struct files_ref_store *files_downcast(struct ref_store *ref_store,
           unsigned int required_flags,
           const char *caller)
{
 struct files_ref_store *refs;

 if (ref_store->be != &refs_be_files)
  BUG("ref_store is type \"%s\" not \"files\" in %s",
      ref_store->be->name, caller);

 refs = (struct files_ref_store *)ref_store;

 if ((refs->store_flags & required_flags) != required_flags)
  BUG("operation %s requires abilities 0x%x, but only have 0x%x",
      caller, required_flags, refs->store_flags);

 return refs;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref {struct ref* next; int old_oid; } ;
struct object {int dummy; } ;
struct TYPE_2__ {char const* url; scalar_t__ can_update_info_refs; } ;


 int add_fetch_request (struct object*) ;
 struct ref* alloc_ref (char const*) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int free (struct ref*) ;
 int has_object_file (int *) ;
 scalar_t__ http_fetch_ref (char const*,struct ref*) ;
 struct object* lookup_unknown_object (int *) ;
 char* oid_to_hex (int *) ;
 struct ref* remote_refs ;
 TYPE_1__* repo ;
 int stderr ;

__attribute__((used)) static void one_remote_ref(const char *refname)
{
 struct ref *ref;
 struct object *obj;

 ref = alloc_ref(refname);

 if (http_fetch_ref(repo->url, ref) != 0) {
  fprintf(stderr,
   "Unable to fetch ref %s from %s\n",
   refname, repo->url);
  free(ref);
  return;
 }





 if (repo->can_update_info_refs && !has_object_file(&ref->old_oid)) {
  obj = lookup_unknown_object(&ref->old_oid);
  fprintf(stderr, "  fetch %s for %s\n",
   oid_to_hex(&ref->old_oid), refname);
  add_fetch_request(obj);
 }

 ref->next = remote_refs;
 remote_refs = ref;
}

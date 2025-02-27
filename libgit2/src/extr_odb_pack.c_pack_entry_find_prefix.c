
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {size_t length; } ;
struct pack_backend {struct git_pack_file* last_found; TYPE_4__ packs; } ;
struct git_pack_file {int dummy; } ;
struct git_pack_entry {int sha1; } ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_10__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;


 int GIT_EAMBIGUOUS ;
 int git_odb__error_ambiguous (char*) ;
 int git_odb__error_notfound (char*,TYPE_2__ const*,size_t) ;
 scalar_t__ git_oid_cmp (int *,TYPE_2__*) ;
 int git_oid_cpy (TYPE_2__*,int *) ;
 int git_pack_entry_find (struct git_pack_entry*,struct git_pack_file*,TYPE_2__ const*,size_t) ;
 struct git_pack_file* git_vector_get (TYPE_4__*,size_t) ;

__attribute__((used)) static int pack_entry_find_prefix(
 struct git_pack_entry *e,
 struct pack_backend *backend,
 const git_oid *short_oid,
 size_t len)
{
 int error;
 size_t i;
 git_oid found_full_oid = {{0}};
 bool found = 0;
 struct git_pack_file *last_found = backend->last_found;

 if (last_found) {
  error = git_pack_entry_find(e, last_found, short_oid, len);
  if (error == GIT_EAMBIGUOUS)
   return error;
  if (!error) {
   git_oid_cpy(&found_full_oid, &e->sha1);
   found = 1;
  }
 }

 for (i = 0; i < backend->packs.length; ++i) {
  struct git_pack_file *p;

  p = git_vector_get(&backend->packs, i);
  if (p == last_found)
   continue;

  error = git_pack_entry_find(e, p, short_oid, len);
  if (error == GIT_EAMBIGUOUS)
   return error;
  if (!error) {
   if (found && git_oid_cmp(&e->sha1, &found_full_oid))
    return git_odb__error_ambiguous("found multiple pack entries");
   git_oid_cpy(&found_full_oid, &e->sha1);
   found = 1;
   backend->last_found = p;
  }
 }

 if (!found)
  return git_odb__error_notfound("no matching pack entry for prefix",
   short_oid, len);
 else
  return 0;
}

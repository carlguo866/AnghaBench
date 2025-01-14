
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pack_backend {int dummy; } ;
struct git_pack_entry {int const sha1; int offset; int p; } ;
struct TYPE_3__ {size_t len; int type; void* data; int * member_0; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_object_t ;


 size_t GIT_OID_HEXSZ ;
 size_t GIT_OID_MINPREFIXLEN ;
 int git_odb__error_ambiguous (char*) ;
 int git_oid_cpy (int *,int const*) ;
 int git_packfile_unpack (TYPE_1__*,int ,int *) ;
 int pack_backend__read (void**,size_t*,int *,int *,int const*) ;
 int pack_entry_find_prefix (struct git_pack_entry*,struct pack_backend*,int const*,size_t) ;

__attribute__((used)) static int pack_backend__read_prefix(
 git_oid *out_oid,
 void **buffer_p,
 size_t *len_p,
 git_object_t *type_p,
 git_odb_backend *backend,
 const git_oid *short_oid,
 size_t len)
{
 int error = 0;

 if (len < GIT_OID_MINPREFIXLEN)
  error = git_odb__error_ambiguous("prefix length too short");

 else if (len >= GIT_OID_HEXSZ) {

  error = pack_backend__read(buffer_p, len_p, type_p, backend, short_oid);
  if (!error)
   git_oid_cpy(out_oid, short_oid);
 } else {
  struct git_pack_entry e;
  git_rawobj raw = {((void*)0)};

  if ((error = pack_entry_find_prefix(
    &e, (struct pack_backend *)backend, short_oid, len)) == 0 &&
   (error = git_packfile_unpack(&raw, e.p, &e.offset)) == 0)
  {
   *buffer_p = raw.data;
   *len_p = raw.len;
   *type_p = raw.type;
   git_oid_cpy(out_oid, &e.sha1);
  }
 }

 return error;
}

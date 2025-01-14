
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_entry {int dummy; } ;
struct git_delta_index {int dummy; } ;


 int GIT_ERROR_CHECK_ALLOC (void*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,size_t) ;
 int GIT_ERROR_CHECK_ALLOC_MULTIPLY (size_t*,size_t,int) ;
 int GIT_ERROR_NOMEMORY ;
 int git__is_ulong (size_t) ;
 void* git__malloc (size_t) ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static int lookup_index_alloc(
 void **out, unsigned long *out_len, size_t entries, size_t hash_count)
{
 size_t entries_len, hash_len, index_len;

 GIT_ERROR_CHECK_ALLOC_MULTIPLY(&entries_len, entries, sizeof(struct index_entry));
 GIT_ERROR_CHECK_ALLOC_MULTIPLY(&hash_len, hash_count, sizeof(struct index_entry *));

 GIT_ERROR_CHECK_ALLOC_ADD(&index_len, sizeof(struct git_delta_index), entries_len);
 GIT_ERROR_CHECK_ALLOC_ADD(&index_len, index_len, hash_len);

 if (!git__is_ulong(index_len)) {
  git_error_set(GIT_ERROR_NOMEMORY, "overly large delta");
  return -1;
 }

 *out = git__malloc(index_len);
 GIT_ERROR_CHECK_ALLOC(*out);

 *out_len = (unsigned long)index_len;
 return 0;
}

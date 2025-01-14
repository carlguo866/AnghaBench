
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_buf ;
struct TYPE_2__ {char const* email; } ;


 int GIT_BUF_INIT ;
 scalar_t__ GIT_OK ;
 int cl_git_pass (int ) ;
 int clar__fail (char const*,int,char*,int *,int) ;
 int * git__calloc (int,int) ;
 int git__free (int *) ;
 int * git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_len (int *) ;
 int git_buf_printf (int *,char*,char const*,char const*) ;
 int git_buf_puts (int *,char*) ;
 int git_object_free (int *) ;
 int * git_object_id (int *) ;
 int git_oid__writebuf (int *,char*,int *) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,char const*) ;
 int * git_reflog_entry_byindex (int *,size_t) ;
 TYPE_1__* git_reflog_entry_committer (int const*) ;
 int * git_reflog_entry_id_new (int const*) ;
 int * git_reflog_entry_id_old (int const*) ;
 char* git_reflog_entry_message (int const*) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int *,char const*) ;
 scalar_t__ git_revparse_single (int **,int *,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

void cl_reflog_check_entry_(git_repository *repo, const char *reflog, size_t idx,
 const char *old_spec, const char *new_spec,
 const char *email, const char *message, const char *file, int line)
{
 git_reflog *log;
 const git_reflog_entry *entry;
 git_buf result = GIT_BUF_INIT;

 cl_git_pass(git_reflog_read(&log, repo, reflog));
 entry = git_reflog_entry_byindex(log, idx);
 if (entry == ((void*)0))
  clar__fail(file, line, "Reflog has no such entry", ((void*)0), 1);

 if (old_spec) {
  git_object *obj = ((void*)0);
  if (git_revparse_single(&obj, repo, old_spec) == GIT_OK) {
   if (git_oid_cmp(git_object_id(obj), git_reflog_entry_id_old(entry)) != 0) {
    git_oid__writebuf(&result, "\tOld OID: \"", git_object_id(obj));
    git_oid__writebuf(&result, "\" != \"", git_reflog_entry_id_old(entry));
    git_buf_puts(&result, "\"\n");
   }
   git_object_free(obj);
  } else {
   git_oid *oid = git__calloc(1, sizeof(*oid));
   git_oid_fromstr(oid, old_spec);
   if (git_oid_cmp(oid, git_reflog_entry_id_old(entry)) != 0) {
    git_oid__writebuf(&result, "\tOld OID: \"", oid);
    git_oid__writebuf(&result, "\" != \"", git_reflog_entry_id_old(entry));
    git_buf_puts(&result, "\"\n");
   }
   git__free(oid);
  }
 }
 if (new_spec) {
  git_object *obj = ((void*)0);
  if (git_revparse_single(&obj, repo, new_spec) == GIT_OK) {
   if (git_oid_cmp(git_object_id(obj), git_reflog_entry_id_new(entry)) != 0) {
    git_oid__writebuf(&result, "\tNew OID: \"", git_object_id(obj));
    git_oid__writebuf(&result, "\" != \"", git_reflog_entry_id_new(entry));
    git_buf_puts(&result, "\"\n");
   }
   git_object_free(obj);
  } else {
   git_oid *oid = git__calloc(1, sizeof(*oid));
   git_oid_fromstr(oid, new_spec);
   if (git_oid_cmp(oid, git_reflog_entry_id_new(entry)) != 0) {
    git_oid__writebuf(&result, "\tNew OID: \"", oid);
    git_oid__writebuf(&result, "\" != \"", git_reflog_entry_id_new(entry));
    git_buf_puts(&result, "\"\n");
   }
   git__free(oid);
  }
 }

 if (email && strcmp(email, git_reflog_entry_committer(entry)->email) != 0)
  git_buf_printf(&result, "\tEmail: \"%s\" != \"%s\"\n", email, git_reflog_entry_committer(entry)->email);

 if (message) {
  const char *entry_msg = git_reflog_entry_message(entry);
  if (entry_msg == ((void*)0)) entry_msg = "";

  if (entry_msg && strcmp(message, entry_msg) != 0)
   git_buf_printf(&result, "\tMessage: \"%s\" != \"%s\"\n", message, entry_msg);
 }
 if (git_buf_len(&result) != 0)
  clar__fail(file, line, "Reflog entry mismatch", git_buf_cstr(&result), 1);

 git_buf_dispose(&result);
 git_reflog_free(log);
}

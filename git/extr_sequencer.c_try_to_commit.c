
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; int len; } ;
struct repository {int index_file; int index; } ;
struct replay_opts {int default_msg_cleanup; int gpg_sign; int explicit_cleanup; scalar_t__ record_origin; scalar_t__ signoff; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit_extra_header {int dummy; } ;
struct commit {int parents; } ;
typedef enum commit_msg_cleanup_mode { ____Placeholder_commit_msg_cleanup_mode } commit_msg_cleanup_mode ;
struct TYPE_2__ {int empty_tree; } ;


 unsigned int ALLOW_EMPTY ;
 unsigned int AMEND_MSG ;
 unsigned int CLEANUP_MSG ;
 int COMMIT_MSG_CLEANUP_ALL ;
 int COMMIT_MSG_CLEANUP_NONE ;
 int COMMIT_MSG_CLEANUP_SPACE ;
 unsigned int CREATE_ROOT_COMMIT ;
 unsigned int EDIT_MSG ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 int commit_post_rewrite (struct repository*,struct commit*,struct object_id*) ;
 scalar_t__ commit_tree_extended (int ,int ,struct object_id*,struct commit_list*,struct object_id*,char const*,int ,struct commit_extra_header*) ;
 struct commit_list* copy_commit_list (int ) ;
 int error (char*,...) ;
 int error_errno (int ,int ) ;
 int find_commit_subject (char const*,char const**) ;
 scalar_t__ find_hook (char*) ;
 int free (char*) ;
 int free_commit_extra_headers (struct commit_extra_header*) ;
 char* get_author (char const*) ;
 char* get_commit_output_encoding () ;
 int get_commit_tree_oid (struct commit*) ;
 int getenv (char*) ;
 int git_path_commit_editmsg () ;
 char* logmsg_reencode (struct commit*,int *,char const*) ;
 scalar_t__ message_is_empty (struct strbuf*,int) ;
 scalar_t__ oideq (int ,struct object_id*) ;
 scalar_t__ parse_head (struct repository*,struct commit**) ;
 struct commit_extra_header* read_commit_extra_headers (struct commit*,char const**) ;
 int reset_ident_date () ;
 int run_commit_hook (int ,int ,char*,int *) ;
 int run_prepare_commit_msg_hook (struct repository*,struct strbuf*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 scalar_t__ strbuf_read_file (struct strbuf*,int ,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_stripspace (struct strbuf*,int) ;
 TYPE_1__* the_hash_algo ;
 int unuse_commit_buffer (struct commit*,char const*) ;
 scalar_t__ update_head_with_reflog (struct commit*,struct object_id*,int ,struct strbuf*,struct strbuf*) ;
 scalar_t__ write_index_as_tree (struct object_id*,int ,int ,int ,int *) ;

__attribute__((used)) static int try_to_commit(struct repository *r,
    struct strbuf *msg, const char *author,
    struct replay_opts *opts, unsigned int flags,
    struct object_id *oid)
{
 struct object_id tree;
 struct commit *current_head = ((void*)0);
 struct commit_list *parents = ((void*)0);
 struct commit_extra_header *extra = ((void*)0);
 struct strbuf err = STRBUF_INIT;
 struct strbuf commit_msg = STRBUF_INIT;
 char *amend_author = ((void*)0);
 const char *hook_commit = ((void*)0);
 enum commit_msg_cleanup_mode cleanup;
 int res = 0;

 if (parse_head(r, &current_head))
  return -1;

 if (flags & AMEND_MSG) {
  const char *exclude_gpgsig[] = { "gpgsig", ((void*)0) };
  const char *out_enc = get_commit_output_encoding();
  const char *message = logmsg_reencode(current_head, ((void*)0),
            out_enc);

  if (!msg) {
   const char *orig_message = ((void*)0);

   find_commit_subject(message, &orig_message);
   msg = &commit_msg;
   strbuf_addstr(msg, orig_message);
   hook_commit = "HEAD";
  }
  author = amend_author = get_author(message);
  unuse_commit_buffer(current_head, message);
  if (!author) {
   res = error(_("unable to parse commit author"));
   goto out;
  }
  parents = copy_commit_list(current_head->parents);
  extra = read_commit_extra_headers(current_head, exclude_gpgsig);
 } else if (current_head &&
     (!(flags & CREATE_ROOT_COMMIT) || (flags & AMEND_MSG))) {
  commit_list_insert(current_head, &parents);
 }

 if (write_index_as_tree(&tree, r->index, r->index_file, 0, ((void*)0))) {
  res = error(_("git write-tree failed to write a tree"));
  goto out;
 }

 if (!(flags & ALLOW_EMPTY) && oideq(current_head ?
         get_commit_tree_oid(current_head) :
         the_hash_algo->empty_tree, &tree)) {
  res = 1;
  goto out;
 }

 if (find_hook("prepare-commit-msg")) {
  res = run_prepare_commit_msg_hook(r, msg, hook_commit);
  if (res)
   goto out;
  if (strbuf_read_file(&commit_msg, git_path_commit_editmsg(),
         2048) < 0) {
   res = error_errno(_("unable to read commit message "
           "from '%s'"),
         git_path_commit_editmsg());
   goto out;
  }
  msg = &commit_msg;
 }

 if (flags & CLEANUP_MSG)
  cleanup = COMMIT_MSG_CLEANUP_ALL;
 else if ((opts->signoff || opts->record_origin) &&
   !opts->explicit_cleanup)
  cleanup = COMMIT_MSG_CLEANUP_SPACE;
 else
  cleanup = opts->default_msg_cleanup;

 if (cleanup != COMMIT_MSG_CLEANUP_NONE)
  strbuf_stripspace(msg, cleanup == COMMIT_MSG_CLEANUP_ALL);
 if ((flags & EDIT_MSG) && message_is_empty(msg, cleanup)) {
  res = 1;
  goto out;
 }

 reset_ident_date();

 if (commit_tree_extended(msg->buf, msg->len, &tree, parents,
     oid, author, opts->gpg_sign, extra)) {
  res = error(_("failed to write commit object"));
  goto out;
 }

 if (update_head_with_reflog(current_head, oid,
        getenv("GIT_REFLOG_ACTION"), msg, &err)) {
  res = error("%s", err.buf);
  goto out;
 }

 run_commit_hook(0, r->index_file, "post-commit", ((void*)0));
 if (flags & AMEND_MSG)
  commit_post_rewrite(r, current_head, oid);

out:
 free_commit_extra_headers(extra);
 strbuf_release(&err);
 strbuf_release(&commit_msg);
 free(amend_author);

 return res;
}

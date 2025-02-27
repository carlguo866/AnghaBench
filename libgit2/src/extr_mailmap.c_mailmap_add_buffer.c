
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ remain_len; } ;
typedef TYPE_1__ git_parse_ctx ;
typedef int git_mailmap ;
struct TYPE_13__ {int size; int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_parse_advance_line (TYPE_1__*) ;
 int git_parse_ctx_init (TYPE_1__*,char const*,size_t) ;
 int mailmap_add_entry_unterminated (int *,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int * memchr (char const*,char,size_t) ;
 int parse_mailmap_entry (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int mailmap_add_buffer(git_mailmap *mm, const char *buf, size_t len)
{
 int error = 0;
 git_parse_ctx ctx;


 git_buf real_name = GIT_BUF_INIT;
 git_buf real_email = GIT_BUF_INIT;
 git_buf replace_name = GIT_BUF_INIT;
 git_buf replace_email = GIT_BUF_INIT;


 if (memchr(buf, '\0', len) != ((void*)0))
  return -1;

 git_parse_ctx_init(&ctx, buf, len);


 while (ctx.remain_len > 0) {
  error = parse_mailmap_entry(
   &real_name, &real_email, &replace_name, &replace_email, &ctx);
  if (error < 0) {
   error = 0;
   git_parse_advance_line(&ctx);
   continue;
  }


  error = mailmap_add_entry_unterminated(
   mm, real_name.ptr, real_name.size, real_email.ptr, real_email.size,
   replace_name.ptr, replace_name.size, replace_email.ptr, replace_email.size);
  if (error < 0)
   goto cleanup;

  error = 0;
 }

cleanup:
 git_buf_dispose(&real_name);
 git_buf_dispose(&real_email);
 git_buf_dispose(&replace_name);
 git_buf_dispose(&replace_email);
 return error;
}

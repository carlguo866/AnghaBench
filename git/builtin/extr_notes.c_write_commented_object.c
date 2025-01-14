
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct child_process {char const** argv; int no_stdin; int out; int git_cmd; scalar_t__ err; } ;


 struct child_process CHILD_PROCESS_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,char*) ;
 int die_errno (int ) ;
 scalar_t__ finish_command (struct child_process*) ;
 char* oid_to_hex (struct object_id const*) ;
 scalar_t__ start_command (struct child_process*) ;
 int strbuf_add_commented_lines (struct strbuf*,int ,int ) ;
 scalar_t__ strbuf_read (struct strbuf*,int,int ) ;
 int strbuf_release (struct strbuf*) ;
 int write_or_die (int,int ,int ) ;

__attribute__((used)) static void write_commented_object(int fd, const struct object_id *object)
{
 const char *show_args[5] =
  {"show", "--stat", "--no-notes", oid_to_hex(object), ((void*)0)};
 struct child_process show = CHILD_PROCESS_INIT;
 struct strbuf buf = STRBUF_INIT;
 struct strbuf cbuf = STRBUF_INIT;


 show.argv = show_args;
 show.no_stdin = 1;
 show.out = -1;
 show.err = 0;
 show.git_cmd = 1;
 if (start_command(&show))
  die(_("unable to start 'show' for object '%s'"),
      oid_to_hex(object));

 if (strbuf_read(&buf, show.out, 0) < 0)
  die_errno(_("could not read 'show' output"));
 strbuf_add_commented_lines(&cbuf, buf.buf, buf.len);
 write_or_die(fd, cbuf.buf, cbuf.len);

 strbuf_release(&cbuf);
 strbuf_release(&buf);

 if (finish_command(&show))
  die(_("failed to finish 'show' for object '%s'"),
      oid_to_hex(object));
}

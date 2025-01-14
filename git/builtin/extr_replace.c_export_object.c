
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct child_process {int git_cmd; int out; int args; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct child_process CHILD_PROCESS_INIT ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int _ (char*) ;
 int argv_array_push (int *,char*) ;
 int error (int ) ;
 int error_errno (int ,char const*) ;
 char* oid_to_hex (struct object_id const*) ;
 int open (char const*,int,int) ;
 scalar_t__ run_command (struct child_process*) ;
 char* type_name (int) ;

__attribute__((used)) static int export_object(const struct object_id *oid, enum object_type type,
     int raw, const char *filename)
{
 struct child_process cmd = CHILD_PROCESS_INIT;
 int fd;

 fd = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0666);
 if (fd < 0)
  return error_errno(_("unable to open %s for writing"), filename);

 argv_array_push(&cmd.args, "--no-replace-objects");
 argv_array_push(&cmd.args, "cat-file");
 if (raw)
  argv_array_push(&cmd.args, type_name(type));
 else
  argv_array_push(&cmd.args, "-p");
 argv_array_push(&cmd.args, oid_to_hex(oid));
 cmd.git_cmd = 1;
 cmd.out = fd;

 if (run_command(&cmd))
  return error(_("cat-file reported failure"));
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct commit** value; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 int error (char*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 int the_repository ;

int parse_opt_commit(const struct option *opt, const char *arg, int unset)
{
 struct object_id oid;
 struct commit *commit;
 struct commit **target = opt->value;

 if (!arg)
  return -1;
 if (get_oid(arg, &oid))
  return error("malformed object name %s", arg);
 commit = lookup_commit_reference(the_repository, &oid);
 if (!commit)
  return error("no such commit %s", arg);
 *target = commit;
 return 0;
}

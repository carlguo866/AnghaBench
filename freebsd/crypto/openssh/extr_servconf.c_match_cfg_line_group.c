
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_gid; int pw_name; } ;


 int debug (char*,...) ;
 int ga_free () ;
 scalar_t__ ga_init (int ,int ) ;
 int ga_match_pattern_list (char const*) ;
 struct passwd* getpwnam (char const*) ;

__attribute__((used)) static int
match_cfg_line_group(const char *grps, int line, const char *user)
{
 int result = 0;
 struct passwd *pw;

 if (user == ((void*)0))
  goto out;

 if ((pw = getpwnam(user)) == ((void*)0)) {
  debug("Can't match group at line %d because user %.100s does "
      "not exist", line, user);
 } else if (ga_init(pw->pw_name, pw->pw_gid) == 0) {
  debug("Can't Match group because user %.100s not in any group "
      "at line %d", user, line);
 } else if (ga_match_pattern_list(grps) != 1) {
  debug("user %.100s does not match group list %.100s at line %d",
      user, grps, line);
 } else {
  debug("user %.100s matched group list %.100s at line %d", user,
      grps, line);
  result = 1;
 }
out:
 ga_free();
 return result;
}

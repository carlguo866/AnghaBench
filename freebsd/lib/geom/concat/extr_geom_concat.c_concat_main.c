
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 unsigned int G_FLAG_VERBOSE ;
 int concat_clear (struct gctl_req*) ;
 int concat_dump (struct gctl_req*) ;
 int concat_label (struct gctl_req*) ;
 int gctl_error (struct gctl_req*,char*,char const*) ;
 char* gctl_get_ascii (struct gctl_req*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int verbose ;

__attribute__((used)) static void
concat_main(struct gctl_req *req, unsigned flags)
{
 const char *name;

 if ((flags & G_FLAG_VERBOSE) != 0)
  verbose = 1;

 name = gctl_get_ascii(req, "verb");
 if (name == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "verb");
  return;
 }
 if (strcmp(name, "label") == 0)
  concat_label(req);
 else if (strcmp(name, "clear") == 0)
  concat_clear(req);
 else if (strcmp(name, "dump") == 0)
  concat_dump(req);
 else
  gctl_error(req, "Unknown command: %s.", name);
}

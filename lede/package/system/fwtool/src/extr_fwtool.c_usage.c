
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int
usage(const char *progname)
{
 fprintf(stderr, "Usage: %s <options> <firmware>\n"
  "\n"
  "Options:\n"
  "  -S <file>:		Append signature file to firmware image\n"
  "  -I <file>:		Append metadata file to firmware image\n"
  "  -s <file>:		Extract signature file from firmware image\n"
  "  -i <file>:		Extract metadata file from firmware image\n"
  "  -t:			Remove extracted chunks from firmare image (using -s, -i)\n"
  "  -q:			Quiet (suppress error messages)\n"
  "\n", progname);
 return 1;
}

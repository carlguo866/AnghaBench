
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct group_des {int custom_port; int nports; int pipename; } ;
struct TYPE_2__ {int num_groups; int output_rings; } ;


 int D (char*,...) ;
 int DEF_OUT_PIPES ;
 int MAX_IFNAMELEN ;
 int ND (char*,char*,int) ;
 int atoi (char*) ;
 TYPE_1__ glob_arg ;
 struct group_des* groups ;
 char* index (char*,char) ;
 int memset (struct group_des*,int ,int) ;
 struct group_des* realloc (struct group_des*,size_t) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int
parse_pipes(char *spec)
{
 char *end = index(spec, ':');
 static int max_groups = 0;
 struct group_des *g;

 ND("spec %s num_groups %d", spec, glob_arg.num_groups);
 if (max_groups < glob_arg.num_groups + 1) {
  size_t size = sizeof(*g) * (glob_arg.num_groups + 1);
  groups = realloc(groups, size);
  if (groups == ((void*)0)) {
   D("out of memory");
   return 1;
  }
 }
 g = &groups[glob_arg.num_groups];
 memset(g, 0, sizeof(*g));

 if (end != ((void*)0)) {
  if (end - spec > MAX_IFNAMELEN - 8) {
   D("name '%s' too long", spec);
   return 1;
  }
  if (end == spec) {
   D("missing prefix before ':' in '%s'", spec);
   return 1;
  }
  strncpy(g->pipename, spec, end - spec);
  g->custom_port = 1;
  end++;
 } else {






  end = spec;
 }
 if (*end == '\0') {
  g->nports = DEF_OUT_PIPES;
 } else {
  g->nports = atoi(end);
  if (g->nports < 1) {
   D("invalid number of pipes '%s' (must be at least 1)", end);
   return 1;
  }
 }
 glob_arg.output_rings += g->nports;
 glob_arg.num_groups++;
 return 0;
}

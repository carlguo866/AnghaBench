
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* lang; } ;
typedef TYPE_2__ mc_node_lang ;
struct TYPE_5__ {int sval; } ;


 char* convert_unicode_to_ACP (int ) ;
 int free (char*) ;
 TYPE_2__** mc_nodes_lang ;
 int mc_nodes_lang_count ;
 char* mcset_mc_basename ;
 scalar_t__ mcset_prefix_bin ;
 char* mcset_rc_dir ;
 int sprintf (char*,char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int windmc_write_bin (char*,TYPE_2__**,int) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
write_bin (void)
{
  mc_node_lang *n = ((void*)0);
  int i, c;

  if (! mc_nodes_lang_count)
    return;

  i = 0;
  while (i < mc_nodes_lang_count)
    {
      char *nd;
      char *filename;

      if (n && n->lang == mc_nodes_lang[i]->lang)
 {
   i++;
   continue;
 }
      n = mc_nodes_lang[i];
      c = i + 1;
      while (c < mc_nodes_lang_count && n->lang == mc_nodes_lang[c]->lang)
 c++;
      nd = convert_unicode_to_ACP (n->lang->sval);


      filename = xmalloc (strlen (nd) + 4 + 1 + strlen (mcset_mc_basename) + 1 + strlen (mcset_rc_dir));
      strcpy (filename, mcset_rc_dir);
      if (mcset_prefix_bin)
 sprintf (filename + strlen (filename), "%s_", mcset_mc_basename);
      strcat (filename, nd);
      strcat (filename, ".bin");


      windmc_write_bin (filename, &mc_nodes_lang[i], (c - i));

      free (filename);
      i = c;
    }
}

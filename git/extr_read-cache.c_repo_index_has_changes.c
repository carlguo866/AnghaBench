
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_7__ {struct object_id oid; } ;
struct tree {TYPE_1__ object; } ;
struct strbuf {int dummy; } ;
struct repository {struct index_state* index; } ;
struct index_state {int cache_nr; TYPE_5__** cache; } ;
struct TYPE_10__ {int exit_with_status; int quick; scalar_t__ has_changes; } ;
struct diff_options {TYPE_4__ flags; } ;
struct TYPE_12__ {int nr; TYPE_3__** queue; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_9__ {TYPE_2__* two; } ;
struct TYPE_8__ {int path; } ;


 int diff_flush (struct diff_options*) ;
 TYPE_6__ diff_queued_diff ;
 int diffcore_std (struct diff_options*) ;
 int do_diff_cache (struct object_id*,struct diff_options*) ;
 int get_oid_tree (char*,struct object_id*) ;
 int repo_diff_setup (struct repository*,struct diff_options*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;

int repo_index_has_changes(struct repository *repo,
      struct tree *tree,
      struct strbuf *sb)
{
 struct index_state *istate = repo->index;
 struct object_id cmp;
 int i;

 if (tree)
  cmp = tree->object.oid;
 if (tree || !get_oid_tree("HEAD", &cmp)) {
  struct diff_options opt;

  repo_diff_setup(repo, &opt);
  opt.flags.exit_with_status = 1;
  if (!sb)
   opt.flags.quick = 1;
  do_diff_cache(&cmp, &opt);
  diffcore_std(&opt);
  for (i = 0; sb && i < diff_queued_diff.nr; i++) {
   if (i)
    strbuf_addch(sb, ' ');
   strbuf_addstr(sb, diff_queued_diff.queue[i]->two->path);
  }
  diff_flush(&opt);
  return opt.flags.has_changes != 0;
 } else {
  for (i = 0; sb && i < istate->cache_nr; i++) {
   if (i)
    strbuf_addch(sb, ' ');
   strbuf_addstr(sb, istate->cache[i]->name);
  }
  return !!istate->cache_nr;
 }
}

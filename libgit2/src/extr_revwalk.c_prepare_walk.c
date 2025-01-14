
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int sorting; int (* get_next ) (TYPE_2__**,TYPE_1__*) ;int (* enqueue ) (TYPE_1__*,TYPE_2__*) ;int walking; TYPE_3__* iterator_reverse; TYPE_3__* iterator_rand; int iterator_topo; scalar_t__ limited; TYPE_3__* user_input; int did_push; } ;
typedef TYPE_1__ git_revwalk ;
struct TYPE_21__ {int seen; scalar_t__ uninteresting; } ;
typedef TYPE_2__ git_commit_list_node ;
struct TYPE_22__ {TYPE_2__* item; struct TYPE_22__* next; } ;
typedef TYPE_3__ git_commit_list ;


 int GIT_ITEROVER ;
 int GIT_SORT_REVERSE ;
 int GIT_SORT_TIME ;
 int GIT_SORT_TOPOLOGICAL ;
 int git_commit_list_free (TYPE_3__**) ;
 int * git_commit_list_insert (TYPE_2__*,TYPE_3__**) ;
 int git_commit_list_parse (TYPE_1__*,TYPE_2__*) ;
 int git_error_clear () ;
 int limit_list (TYPE_3__**,TYPE_1__*,TYPE_3__*) ;
 int mark_parents_uninteresting (TYPE_2__*) ;
 int revwalk_next_reverse ;
 int revwalk_next_toposort ;
 int revwalk_next_unsorted ;
 int sort_in_topological_order (int *,TYPE_1__*,TYPE_3__*) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int stub2 (TYPE_2__**,TYPE_1__*) ;

__attribute__((used)) static int prepare_walk(git_revwalk *walk)
{
 int error = 0;
 git_commit_list *list, *commits = ((void*)0);
 git_commit_list_node *next;


 if (!walk->did_push) {
  git_error_clear();
  return GIT_ITEROVER;
 }

 for (list = walk->user_input; list; list = list->next) {
  git_commit_list_node *commit = list->item;
  if ((error = git_commit_list_parse(walk, commit)) < 0)
   return error;

  if (commit->uninteresting)
   mark_parents_uninteresting(commit);

  if (!commit->seen) {
   commit->seen = 1;
   git_commit_list_insert(commit, &commits);
  }
 }

 if (walk->limited && (error = limit_list(&commits, walk, commits)) < 0)
  return error;

 if (walk->sorting & GIT_SORT_TOPOLOGICAL) {
  error = sort_in_topological_order(&walk->iterator_topo, walk, commits);
  git_commit_list_free(&commits);

  if (error < 0)
   return error;

  walk->get_next = &revwalk_next_toposort;
 } else if (walk->sorting & GIT_SORT_TIME) {
  for (list = commits; list && !error; list = list->next)
   error = walk->enqueue(walk, list->item);

  git_commit_list_free(&commits);

  if (error < 0)
   return error;
 } else {
  walk->iterator_rand = commits;
  walk->get_next = revwalk_next_unsorted;
 }

 if (walk->sorting & GIT_SORT_REVERSE) {

  while ((error = walk->get_next(&next, walk)) == 0)
   if (git_commit_list_insert(next, &walk->iterator_reverse) == ((void*)0))
    return -1;

  if (error != GIT_ITEROVER)
   return error;

  walk->get_next = &revwalk_next_reverse;
 }

 walk->walking = 1;
 return 0;
}

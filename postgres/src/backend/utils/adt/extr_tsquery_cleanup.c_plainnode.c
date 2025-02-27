
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {struct TYPE_15__* left; struct TYPE_15__* right; TYPE_2__* valnode; } ;
struct TYPE_14__ {size_t cur; size_t len; TYPE_4__* ptr; } ;
struct TYPE_12__ {int left; } ;
struct TYPE_13__ {TYPE_3__ qoperator; } ;
struct TYPE_10__ {scalar_t__ oper; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ qoperator; } ;
typedef TYPE_4__ QueryItem ;
typedef TYPE_5__ PLAINTREE ;
typedef TYPE_6__ NODE ;


 scalar_t__ OP_NOT ;
 scalar_t__ QI_VAL ;
 int check_stack_depth () ;
 int memcpy (void*,void*,int) ;
 int pfree (TYPE_6__*) ;
 scalar_t__ repalloc (void*,int) ;

__attribute__((used)) static void
plainnode(PLAINTREE *state, NODE *node)
{

 check_stack_depth();

 if (state->cur == state->len)
 {
  state->len *= 2;
  state->ptr = (QueryItem *) repalloc((void *) state->ptr, state->len * sizeof(QueryItem));
 }
 memcpy((void *) &(state->ptr[state->cur]), (void *) node->valnode, sizeof(QueryItem));
 if (node->valnode->type == QI_VAL)
  state->cur++;
 else if (node->valnode->qoperator.oper == OP_NOT)
 {
  state->ptr[state->cur].qoperator.left = 1;
  state->cur++;
  plainnode(state, node->right);
 }
 else
 {
  int cur = state->cur;

  state->cur++;
  plainnode(state, node->right);
  state->ptr[cur].qoperator.left = state->cur - cur;
  plainnode(state, node->left);
 }
 pfree(node);
}

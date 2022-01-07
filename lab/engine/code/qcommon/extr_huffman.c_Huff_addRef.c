
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t symbol; int weight; struct TYPE_7__* parent; struct TYPE_7__* left; struct TYPE_7__* right; struct TYPE_7__* prev; struct TYPE_7__* next; struct TYPE_7__** head; } ;
typedef TYPE_1__ node_t ;
struct TYPE_8__ {TYPE_1__** loc; TYPE_1__* lhead; TYPE_1__* tree; int blocNode; TYPE_1__* nodeList; } ;
typedef TYPE_2__ huff_t ;
typedef size_t byte ;


 size_t INTERNAL_NODE ;
 void* get_ppnode (TYPE_2__*) ;
 int increment (TYPE_2__*,TYPE_1__*) ;

void Huff_addRef(huff_t* huff, byte ch) {
 node_t *tnode, *tnode2;
 if (huff->loc[ch] == ((void*)0)) {
  tnode = &(huff->nodeList[huff->blocNode++]);
  tnode2 = &(huff->nodeList[huff->blocNode++]);

  tnode2->symbol = INTERNAL_NODE;
  tnode2->weight = 1;
  tnode2->next = huff->lhead->next;
  if (huff->lhead->next) {
   huff->lhead->next->prev = tnode2;
   if (huff->lhead->next->weight == 1) {
    tnode2->head = huff->lhead->next->head;
   } else {
    tnode2->head = get_ppnode(huff);
    *tnode2->head = tnode2;
   }
  } else {
   tnode2->head = get_ppnode(huff);
   *tnode2->head = tnode2;
  }
  huff->lhead->next = tnode2;
  tnode2->prev = huff->lhead;

  tnode->symbol = ch;
  tnode->weight = 1;
  tnode->next = huff->lhead->next;
  if (huff->lhead->next) {
   huff->lhead->next->prev = tnode;
   if (huff->lhead->next->weight == 1) {
    tnode->head = huff->lhead->next->head;
   } else {

    tnode->head = get_ppnode(huff);
    *tnode->head = tnode2;
      }
  } else {

   tnode->head = get_ppnode(huff);
   *tnode->head = tnode;
  }
  huff->lhead->next = tnode;
  tnode->prev = huff->lhead;
  tnode->left = tnode->right = ((void*)0);

  if (huff->lhead->parent) {
   if (huff->lhead->parent->left == huff->lhead) {
    huff->lhead->parent->left = tnode2;
   } else {
    huff->lhead->parent->right = tnode2;
   }
  } else {
   huff->tree = tnode2;
  }

  tnode2->right = tnode;
  tnode2->left = huff->lhead;

  tnode2->parent = huff->lhead->parent;
  huff->lhead->parent = tnode->parent = tnode2;

  huff->loc[ch] = tnode;

  increment(huff, tnode2->parent);
 } else {
  increment(huff, huff->loc[ch]);
 }
}

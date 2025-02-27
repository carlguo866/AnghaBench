
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* parent; struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef TYPE_1__ node_t ;
struct TYPE_7__ {TYPE_1__* tree; } ;
typedef TYPE_2__ huff_t ;



__attribute__((used)) static void swap (huff_t* huff, node_t *node1, node_t *node2) {
 node_t *par1, *par2;

 par1 = node1->parent;
 par2 = node2->parent;

 if (par1) {
  if (par1->left == node1) {
   par1->left = node2;
  } else {
       par1->right = node2;
  }
 } else {
  huff->tree = node2;
 }

 if (par2) {
  if (par2->left == node2) {
   par2->left = node1;
  } else {
   par2->right = node1;
  }
 } else {
  huff->tree = node1;
 }

 node1->parent = par2;
 node2->parent = par1;
}

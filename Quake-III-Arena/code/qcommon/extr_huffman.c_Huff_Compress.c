
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int cursize; int* data; } ;
typedef TYPE_2__ msg_t ;
struct TYPE_10__ {TYPE_1__* tree; TYPE_1__** loc; TYPE_1__* lhead; int blocNode; TYPE_1__* nodeList; } ;
typedef TYPE_3__ huff_t ;
typedef int byte ;
struct TYPE_8__ {size_t symbol; int * right; int left; int parent; int * prev; int next; scalar_t__ weight; } ;


 int Com_Memcpy (int*,int*,int) ;
 int Com_Memset (TYPE_3__*,int ,int) ;
 int Huff_addRef (TYPE_3__*,int) ;
 int Huff_transmit (TYPE_3__*,int,int*) ;
 size_t NYT ;
 int bloc ;

void Huff_Compress(msg_t *mbuf, int offset) {
 int i, ch, size;
 byte seq[65536];
 byte* buffer;
 huff_t huff;

 size = mbuf->cursize - offset;
 buffer = mbuf->data+ + offset;

 if (size<=0) {
  return;
 }

 Com_Memset(&huff, 0, sizeof(huff_t));

 huff.tree = huff.lhead = huff.loc[NYT] = &(huff.nodeList[huff.blocNode++]);
 huff.tree->symbol = NYT;
 huff.tree->weight = 0;
 huff.lhead->next = huff.lhead->prev = ((void*)0);
 huff.tree->parent = huff.tree->left = huff.tree->right = ((void*)0);
 huff.loc[NYT] = huff.tree;

 seq[0] = (size>>8);
 seq[1] = size&0xff;

 bloc = 16;

 for (i=0; i<size; i++ ) {
  ch = buffer[i];
  Huff_transmit(&huff, ch, seq);
  Huff_addRef(&huff, (byte)ch);
 }

 bloc += 8;

 mbuf->cursize = (bloc>>3) + offset;
 Com_Memcpy(mbuf->data+offset, seq, (bloc>>3));
}

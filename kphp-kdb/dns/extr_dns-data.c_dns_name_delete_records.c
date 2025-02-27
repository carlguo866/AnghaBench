
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_type; } ;
typedef TYPE_1__ dns_trie_record_t ;
struct TYPE_6__ {size_t record_off; int next; } ;
struct TYPE_5__ {int first_record_id; } ;


 TYPE_3__* RB ;
 int assert (int) ;
 int free_rb ;
 int free_records ;
 TYPE_2__* names ;
 int * records_buff ;

__attribute__((used)) static int dns_name_delete_records (int name_id, int data_type) {
  assert (name_id >= 0);

  int *w = &names[name_id].first_record_id;
  while (*w >= 0) {
    dns_trie_record_t *p = (dns_trie_record_t *) (&records_buff[RB[*w].record_off]);
    if (p->data_type == data_type) {
      int *y = w, t = 0;
      do {
        w = &RB[*w].next;
        t++;
      } while (*w >= 0 && ((dns_trie_record_t *) (&records_buff[RB[*w].record_off]))->data_type == data_type);
      int first_delete = *y;
      *y = *w;
      *w = free_rb;
      free_rb = first_delete;
      free_records += t;
      break;
    }
    w = &RB[*w].next;
  }
  return 0;
}

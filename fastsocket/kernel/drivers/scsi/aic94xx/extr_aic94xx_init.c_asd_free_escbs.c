
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct asd_seq_data {int num_escbs; TYPE_1__** escb_arr; } ;
struct asd_ha_struct {struct asd_seq_data seq; } ;
struct TYPE_3__ {int list; } ;


 int asd_ascb_free (TYPE_1__*) ;
 int kfree (TYPE_1__**) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void asd_free_escbs(struct asd_ha_struct *asd_ha)
{
 struct asd_seq_data *seq = &asd_ha->seq;
 int i;

 for (i = 0; i < seq->num_escbs; i++) {
  if (!list_empty(&seq->escb_arr[i]->list))
   list_del_init(&seq->escb_arr[i]->list);

  asd_ascb_free(seq->escb_arr[i]);
 }
 kfree(seq->escb_arr);
 seq->escb_arr = ((void*)0);
}

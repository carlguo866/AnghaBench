
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ooo_info {int free_buffers_list; } ;
struct ecore_ooo_buffer {int list_entry; } ;


 int OSAL_LIST_PUSH_TAIL (int *,int *) ;

void ecore_ooo_put_free_buffer(struct ecore_ooo_info *p_ooo_info,
          struct ecore_ooo_buffer *p_buffer)
{
 OSAL_LIST_PUSH_TAIL(&p_buffer->list_entry,
       &p_ooo_info->free_buffers_list);
}

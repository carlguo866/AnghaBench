
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_arg {void* member_0; } ;
typedef int abd_t ;


 int abd_cmp_buf_off_cb ;
 int abd_iterate_func (int *,size_t,size_t,int ,struct buf_arg*) ;

int
abd_cmp_buf_off(abd_t *abd, const void *buf, size_t off, size_t size)
{
 struct buf_arg ba_ptr = { (void *) buf };

 return (abd_iterate_func(abd, off, size, abd_cmp_buf_off_cb, &ba_ptr));
}

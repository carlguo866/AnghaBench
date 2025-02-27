
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int flags; } ;
typedef int key_serial_t ;
typedef int key_ref_t ;


 int CAP_SYS_ADMIN ;
 long EPERM ;
 scalar_t__ IS_ERR (int ) ;
 int KEY_FLAG_KEEP ;
 int KEY_FLAG_ROOT_CAN_INVAL ;
 int KEY_NEED_SEARCH ;
 long PTR_ERR (int ) ;
 scalar_t__ capable (int ) ;
 int kenter (char*,int ) ;
 int key_invalidate (struct key*) ;
 int key_ref_put (int ) ;
 struct key* key_ref_to_ptr (int ) ;
 int kleave (char*,long) ;
 int lookup_user_key (int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

long keyctl_invalidate_key(key_serial_t id)
{
 key_ref_t key_ref;
 struct key *key;
 long ret;

 kenter("%d", id);

 key_ref = lookup_user_key(id, 0, KEY_NEED_SEARCH);
 if (IS_ERR(key_ref)) {
  ret = PTR_ERR(key_ref);


  if (capable(CAP_SYS_ADMIN)) {
   key_ref = lookup_user_key(id, 0, 0);
   if (IS_ERR(key_ref))
    goto error;
   if (test_bit(KEY_FLAG_ROOT_CAN_INVAL,
         &key_ref_to_ptr(key_ref)->flags))
    goto invalidate;
   goto error_put;
  }

  goto error;
 }

invalidate:
 key = key_ref_to_ptr(key_ref);
 ret = 0;
 if (test_bit(KEY_FLAG_KEEP, &key->flags))
  ret = -EPERM;
 else
  key_invalidate(key);
error_put:
 key_ref_put(key_ref);
error:
 kleave(" = %ld", ret);
 return ret;
}

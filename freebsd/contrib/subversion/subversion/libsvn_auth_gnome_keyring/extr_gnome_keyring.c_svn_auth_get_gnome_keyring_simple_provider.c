
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vtable; } ;
typedef TYPE_1__ svn_auth_provider_object_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int gnome_keyring_simple_provider ;
 int init_gnome_keyring () ;

void
svn_auth_get_gnome_keyring_simple_provider
    (svn_auth_provider_object_t **provider,
     apr_pool_t *pool)
{
  svn_auth_provider_object_t *po = apr_pcalloc(pool, sizeof(*po));

  po->vtable = &gnome_keyring_simple_provider;
  *provider = po;




}

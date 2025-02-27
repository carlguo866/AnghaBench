
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct htab {int dummy; } ;
typedef TYPE_1__* htab_t ;
typedef int htab_hash ;
typedef int (* htab_free_with_arg ) (void*,TYPE_1__*) ;
typedef int htab_eq ;
typedef int htab_del ;
typedef scalar_t__ (* htab_alloc_with_arg ) (void*,size_t,int) ;
struct TYPE_8__ {size_t prime; } ;
struct TYPE_7__ {size_t size; unsigned int size_prime_index; int (* free_with_arg_f ) (void*,TYPE_1__*) ;scalar_t__ (* alloc_with_arg_f ) (void*,size_t,int) ;void* alloc_arg; int del_f; int eq_f; int hash_f; int * entries; } ;
typedef int PTR ;


 unsigned int higher_prime_index (size_t) ;
 TYPE_4__* prime_tab ;
 scalar_t__ stub1 (void*,size_t,int) ;
 scalar_t__ stub2 (void*,size_t,int) ;
 int stub3 (void*,TYPE_1__*) ;

htab_t
htab_create_alloc_ex (size_t size, htab_hash hash_f, htab_eq eq_f,
                      htab_del del_f, void *alloc_arg,
                      htab_alloc_with_arg alloc_f,
        htab_free_with_arg free_f)
{
  htab_t result;
  unsigned int size_prime_index;

  size_prime_index = higher_prime_index (size);
  size = prime_tab[size_prime_index].prime;

  result = (htab_t) (*alloc_f) (alloc_arg, 1, sizeof (struct htab));
  if (result == ((void*)0))
    return ((void*)0);
  result->entries = (PTR *) (*alloc_f) (alloc_arg, size, sizeof (PTR));
  if (result->entries == ((void*)0))
    {
      if (free_f != ((void*)0))
 (*free_f) (alloc_arg, result);
      return ((void*)0);
    }
  result->size = size;
  result->size_prime_index = size_prime_index;
  result->hash_f = hash_f;
  result->eq_f = eq_f;
  result->del_f = del_f;
  result->alloc_arg = alloc_arg;
  result->alloc_with_arg_f = alloc_f;
  result->free_with_arg_f = free_f;
  return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_bpf_storage; } ;
struct bpf_sk_storage_map {int dummy; } ;
struct bpf_sk_storage_data {int dummy; } ;
struct bpf_sk_storage {int dummy; } ;
struct bpf_map {int dummy; } ;


 struct bpf_sk_storage_data* __sk_storage_lookup (struct bpf_sk_storage*,struct bpf_sk_storage_map*,int) ;
 struct bpf_sk_storage* rcu_dereference (int ) ;

__attribute__((used)) static struct bpf_sk_storage_data *
sk_storage_lookup(struct sock *sk, struct bpf_map *map, bool cacheit_lockit)
{
 struct bpf_sk_storage *sk_storage;
 struct bpf_sk_storage_map *smap;

 sk_storage = rcu_dereference(sk->sk_bpf_storage);
 if (!sk_storage)
  return ((void*)0);

 smap = (struct bpf_sk_storage_map *)map;
 return __sk_storage_lookup(sk_storage, smap, cacheit_lockit);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_array {scalar_t__ nelems; int type; } ;
struct btf {int dummy; } ;
struct bpf_core_spec {int len; size_t raw_len; scalar_t__* raw_spec; int offset; struct btf const* btf; struct bpf_core_accessor* spec; } ;
struct bpf_core_accessor {scalar_t__ idx; int * name; int type_id; } ;
typedef int __u32 ;


 size_t BPF_CORE_SPEC_MAX_LEN ;
 int E2BIG ;
 int EINVAL ;
 int bpf_core_match_member (struct btf const*,struct bpf_core_accessor const*,struct btf const*,int ,struct bpf_core_spec*,int *) ;
 int btf__resolve_size (struct btf const*,int ) ;
 struct btf_array* btf_array (struct btf_type const*) ;
 int btf_is_array (struct btf_type const*) ;
 int memset (struct bpf_core_spec*,int ,int) ;
 struct btf_type* skip_mods_and_typedefs (struct btf const*,int ,int *) ;

__attribute__((used)) static int bpf_core_spec_match(struct bpf_core_spec *local_spec,
          const struct btf *targ_btf, __u32 targ_id,
          struct bpf_core_spec *targ_spec)
{
 const struct btf_type *targ_type;
 const struct bpf_core_accessor *local_acc;
 struct bpf_core_accessor *targ_acc;
 int i, sz, matched;

 memset(targ_spec, 0, sizeof(*targ_spec));
 targ_spec->btf = targ_btf;

 local_acc = &local_spec->spec[0];
 targ_acc = &targ_spec->spec[0];

 for (i = 0; i < local_spec->len; i++, local_acc++, targ_acc++) {
  targ_type = skip_mods_and_typedefs(targ_spec->btf, targ_id,
         &targ_id);
  if (!targ_type)
   return -EINVAL;

  if (local_acc->name) {
   matched = bpf_core_match_member(local_spec->btf,
       local_acc,
       targ_btf, targ_id,
       targ_spec, &targ_id);
   if (matched <= 0)
    return matched;
  } else {




   if (i > 0) {
    const struct btf_array *a;

    if (!btf_is_array(targ_type))
     return 0;

    a = btf_array(targ_type);
    if (local_acc->idx >= a->nelems)
     return 0;
    if (!skip_mods_and_typedefs(targ_btf, a->type,
           &targ_id))
     return -EINVAL;
   }


   if (targ_spec->raw_len == BPF_CORE_SPEC_MAX_LEN)
    return -E2BIG;

   targ_acc->type_id = targ_id;
   targ_acc->idx = local_acc->idx;
   targ_acc->name = ((void*)0);
   targ_spec->len++;
   targ_spec->raw_spec[targ_spec->raw_len] = targ_acc->idx;
   targ_spec->raw_len++;

   sz = btf__resolve_size(targ_btf, targ_id);
   if (sz < 0)
    return sz;
   targ_spec->offset += local_acc->idx * sz;
  }
 }

 return 1;
}

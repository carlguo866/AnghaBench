
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;



 struct bpf_func_proto const bpf_lwt_in_push_encap_proto ;
 struct bpf_func_proto const* lwt_out_func_proto (int,struct bpf_prog const*) ;

__attribute__((used)) static const struct bpf_func_proto *
lwt_in_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 128:
  return &bpf_lwt_in_push_encap_proto;
 default:
  return lwt_out_func_proto(func_id, prog);
 }
}

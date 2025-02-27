
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int dummy; } ;
struct bpf_object {int dummy; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int BPF_F_ALLOW_MULTI ;
 struct bpf_program* bpf_object__find_program_by_title (struct bpf_object*,char const*) ;
 int bpf_prog_attach (int ,int,int,int ) ;
 int bpf_program__fd (struct bpf_program*) ;
 int libbpf_prog_type_by_name (char const*,int*,int*) ;
 int log_err (char*,char const*) ;

__attribute__((used)) static int prog_attach(struct bpf_object *obj, int cgroup_fd, const char *title)
{
 enum bpf_attach_type attach_type;
 enum bpf_prog_type prog_type;
 struct bpf_program *prog;
 int err;

 err = libbpf_prog_type_by_name(title, &prog_type, &attach_type);
 if (err) {
  log_err("Failed to deduct types for %s BPF program", title);
  return -1;
 }

 prog = bpf_object__find_program_by_title(obj, title);
 if (!prog) {
  log_err("Failed to find %s BPF program", title);
  return -1;
 }

 err = bpf_prog_attach(bpf_program__fd(prog), cgroup_fd,
         attach_type, BPF_F_ALLOW_MULTI);
 if (err) {
  log_err("Failed to attach %s BPF program", title);
  return -1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;


 int CHECK_ERR (int ,int,int ) ;
 struct bpf_object* ERR_PTR (int) ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 scalar_t__ IS_ERR (struct bpf_object*) ;
 int LIBBPF_ERRNO__LIBELF ;
 int bpf_object__check_endianness (struct bpf_object*) ;
 int bpf_object__close (struct bpf_object*) ;
 int bpf_object__collect_reloc (struct bpf_object*) ;
 int bpf_object__elf_collect (struct bpf_object*,int) ;
 int bpf_object__elf_finish (struct bpf_object*) ;
 int bpf_object__elf_init (struct bpf_object*) ;
 struct bpf_object* bpf_object__new (char const*,void*,size_t) ;
 int bpf_object__probe_caps (struct bpf_object*) ;
 int bpf_object__validate (struct bpf_object*,int) ;
 scalar_t__ elf_version (int ) ;
 int out ;
 int pr_warning (char*,char const*) ;

__attribute__((used)) static struct bpf_object *
__bpf_object__open(const char *path, void *obj_buf, size_t obj_buf_sz,
     bool needs_kver, int flags)
{
 struct bpf_object *obj;
 int err;

 if (elf_version(EV_CURRENT) == EV_NONE) {
  pr_warning("failed to init libelf for %s\n", path);
  return ERR_PTR(-LIBBPF_ERRNO__LIBELF);
 }

 obj = bpf_object__new(path, obj_buf, obj_buf_sz);
 if (IS_ERR(obj))
  return obj;

 CHECK_ERR(bpf_object__elf_init(obj), err, out);
 CHECK_ERR(bpf_object__check_endianness(obj), err, out);
 CHECK_ERR(bpf_object__probe_caps(obj), err, out);
 CHECK_ERR(bpf_object__elf_collect(obj, flags), err, out);
 CHECK_ERR(bpf_object__collect_reloc(obj), err, out);
 CHECK_ERR(bpf_object__validate(obj, needs_kver), err, out);

 bpf_object__elf_finish(obj);
 return obj;
out:
 bpf_object__close(obj);
 return ERR_PTR(err);
}

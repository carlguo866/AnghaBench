
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;
typedef int __u32 ;


 int BPF_CGROUP_DEVICE ;
 int BPF_PROG_TYPE_CGROUP_DEVICE ;
 int DEV_CGROUP_PROG ;
 int EXIT_FAILURE ;
 int TEST_CGROUP ;
 int assert (int) ;
 scalar_t__ bpf_prog_attach (int,int,int ,int ) ;
 scalar_t__ bpf_prog_load (int ,int ,struct bpf_object**,int*) ;
 scalar_t__ bpf_prog_query (int,int ,int ,int *,int *,int *) ;
 int cleanup_cgroup_environment () ;
 int create_and_get_cgroup (int ) ;
 scalar_t__ join_cgroup (int ) ;
 int printf (char*) ;
 scalar_t__ setup_cgroup_environment () ;
 int system (char*) ;

int main(int argc, char **argv)
{
 struct bpf_object *obj;
 int error = EXIT_FAILURE;
 int prog_fd, cgroup_fd;
 __u32 prog_cnt;

 if (bpf_prog_load(DEV_CGROUP_PROG, BPF_PROG_TYPE_CGROUP_DEVICE,
     &obj, &prog_fd)) {
  printf("Failed to load DEV_CGROUP program\n");
  goto out;
 }

 if (setup_cgroup_environment()) {
  printf("Failed to load DEV_CGROUP program\n");
  goto err;
 }


 cgroup_fd = create_and_get_cgroup(TEST_CGROUP);
 if (cgroup_fd < 0) {
  printf("Failed to create test cgroup\n");
  goto err;
 }

 if (join_cgroup(TEST_CGROUP)) {
  printf("Failed to join cgroup\n");
  goto err;
 }


 if (bpf_prog_attach(prog_fd, cgroup_fd, BPF_CGROUP_DEVICE, 0)) {
  printf("Failed to attach DEV_CGROUP program");
  goto err;
 }

 if (bpf_prog_query(cgroup_fd, BPF_CGROUP_DEVICE, 0, ((void*)0), ((void*)0),
      &prog_cnt)) {
  printf("Failed to query attached programs");
  goto err;
 }




 assert(system("rm -f /tmp/test_dev_cgroup_null") == 0);
 assert(system("mknod /tmp/test_dev_cgroup_null c 1 3"));
 assert(system("rm -f /tmp/test_dev_cgroup_null") == 0);


 assert(system("rm -f /tmp/test_dev_cgroup_zero") == 0);
 assert(system("mknod /tmp/test_dev_cgroup_zero c 1 5") == 0);
 assert(system("rm -f /tmp/test_dev_cgroup_zero") == 0);

 assert(system("dd if=/dev/urandom of=/dev/zero count=64") == 0);


 assert(system("dd if=/dev/urandom of=/dev/full count=64"));


 assert(system("dd if=/dev/random of=/dev/zero count=64"));

 error = 0;
 printf("test_dev_cgroup:PASS\n");

err:
 cleanup_cgroup_environment();

out:
 return error;
}

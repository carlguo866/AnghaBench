
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef scalar_t__ ino_t ;


 int ENOENT ;
 int get_process_ns (int,char*,scalar_t__*) ;
 int get_process_ppid (int,int*) ;

__attribute__((used)) static int get_mount_namespace_leader(pid_t pid, pid_t *container_pid) {
        pid_t cpid = pid, ppid = 0;
        ino_t proc_mntns;
        int r = 0;

        r = get_process_ns(pid, "mnt", &proc_mntns);
        if (r < 0)
                return r;

        for (;;) {
                ino_t parent_mntns;

                r = get_process_ppid(cpid, &ppid);
                if (r < 0)
                        return r;

                r = get_process_ns(ppid, "mnt", &parent_mntns);
                if (r < 0)
                        return r;

                if (proc_mntns != parent_mntns)
                        break;

                if (ppid == 1)
                        return -ENOENT;

                cpid = ppid;
        }

        *container_pid = ppid;
        return 0;
}

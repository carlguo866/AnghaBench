
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int IN_CREATE ;
 int IN_DELETE ;
 int IN_ISDIR ;
 int IN_MOVED_TO ;
 int errno ;
 int inotify_add_watch (int,char*,int) ;

__attribute__((used)) static int monitor_add_inotify_watch(int fd) {
        int k;

        k = inotify_add_watch(fd, "/run/systemd/netif/links/", IN_MOVED_TO|IN_DELETE);
        if (k >= 0)
                return 0;
        else if (errno != ENOENT)
                return -errno;

        k = inotify_add_watch(fd, "/run/systemd/netif/", IN_CREATE|IN_ISDIR);
        if (k >= 0)
                return 0;
        else if (errno != ENOENT)
                return -errno;

        k = inotify_add_watch(fd, "/run/systemd/", IN_CREATE|IN_ISDIR);
        if (k < 0)
                return -errno;

        return 0;
}

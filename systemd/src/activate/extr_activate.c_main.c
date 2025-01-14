
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct epoll_event {TYPE_1__ data; } ;


 scalar_t__ EINTR ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SD_LISTEN_FDS_START ;
 scalar_t__ arg_accept ;
 int do_accept (char*,char**,char**,int ) ;
 scalar_t__ epoll_wait (int,struct epoll_event*,int,int) ;
 scalar_t__ errno ;
 int exec_process (char*,char**,char**,int ,size_t) ;
 int install_chld_handler () ;
 int log_error (char*) ;
 int log_error_errno (scalar_t__,char*) ;
 int log_info (char*,int ) ;
 int log_open () ;
 int log_parse_environment () ;
 int log_show_color (int) ;
 int open_sockets (int*,scalar_t__) ;
 size_t optind ;
 int parse_argv (int,char**) ;

int main(int argc, char **argv, char **envp) {
        int r, n;
        int epoll_fd = -1;

        log_show_color(1);
        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r == 0 ? EXIT_SUCCESS : EXIT_FAILURE;

        r = install_chld_handler();
        if (r < 0)
                return EXIT_FAILURE;

        n = open_sockets(&epoll_fd, arg_accept);
        if (n < 0)
                return EXIT_FAILURE;
        if (n == 0) {
                log_error("No sockets to listen on specified or passed in.");
                return EXIT_FAILURE;
        }

        for (;;) {
                struct epoll_event event;

                if (epoll_wait(epoll_fd, &event, 1, -1) < 0) {
                        if (errno == EINTR)
                                continue;

                        log_error_errno(errno, "epoll_wait() failed: %m");
                        return EXIT_FAILURE;
                }

                log_info("Communication attempt on fd %i.", event.data.fd);
                if (arg_accept) {
                        r = do_accept(argv[optind], argv + optind, envp, event.data.fd);
                        if (r < 0)
                                return EXIT_FAILURE;
                } else
                        break;
        }

        exec_process(argv[optind], argv + optind, envp, SD_LISTEN_FDS_START, (size_t) n);

        return EXIT_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
typedef size_t off_t ;
struct TYPE_3__ {int (* write ) (TYPE_1__*,char const*,size_t) ;} ;


 scalar_t__ EINTR ;
 int abort () ;
 int assert (int) ;
 TYPE_1__* con ;
 scalar_t__ errno ;
 int fprintf (int ,char*,...) ;
 int rand () ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int stub1 (TYPE_1__*,char const*,size_t) ;
 int usleep (int) ;

__attribute__((used)) static void safe_send(const void* buf, size_t len, bool hickup)
{
    off_t offset = 0;
    const char* ptr = buf;
    do {
        size_t num_bytes = len - offset;
        if (hickup) {
            if (num_bytes > 1024) {
                num_bytes = (rand() % 1023) + 1;
            }
        }
        ssize_t nw = con->write(con, ptr + offset, num_bytes);
        if (nw == -1) {
            if (errno != EINTR) {
                fprintf(stderr, "Failed to write: %s\n", strerror(errno));
                abort();
            }
        } else {
            if (hickup) {
                usleep(100);
            }
            offset += nw;
        }
    } while (offset < len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int file; } ;
typedef TYPE_2__ LIBSSHContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EIO ;
 int av_log (TYPE_2__*,int ,char*) ;
 int sftp_write (int ,unsigned char const*,int) ;

__attribute__((used)) static int libssh_write(URLContext *h, const unsigned char *buf, int size)
{
    LIBSSHContext *libssh = h->priv_data;
    int bytes_written;

    if ((bytes_written = sftp_write(libssh->file, buf, size)) < 0) {
        av_log(libssh, AV_LOG_ERROR, "Write error.\n");
        return AVERROR(EIO);
    }
    return bytes_written;
}

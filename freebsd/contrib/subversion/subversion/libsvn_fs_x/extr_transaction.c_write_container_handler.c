
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int stream; scalar_t__ sha1_ctx; scalar_t__ md5_ctx; } ;
typedef TYPE_1__ write_container_baton_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_checksum_update (scalar_t__,char const*,int ) ;
 int svn_stream_write (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
write_container_handler(void *baton,
                        const char *data,
                        apr_size_t *len)
{
  write_container_baton_t *whb = baton;

  SVN_ERR(svn_checksum_update(whb->md5_ctx, data, *len));
  if (whb->sha1_ctx)
    SVN_ERR(svn_checksum_update(whb->sha1_ctx, data, *len));

  SVN_ERR(svn_stream_write(whb->stream, data, len));
  whb->size += *len;

  return SVN_NO_ERROR;
}

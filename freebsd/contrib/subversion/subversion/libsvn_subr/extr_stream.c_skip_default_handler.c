
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* svn_read_fn_t ) (void*,char*,scalar_t__*) ;
typedef int svn_error_t ;
typedef int buffer ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
skip_default_handler(void *baton, apr_size_t len, svn_read_fn_t read_full_fn)
{
  apr_size_t bytes_read = 1;
  char buffer[4096];
  apr_size_t to_read = len;

  while ((to_read > 0) && (bytes_read > 0))
    {
      bytes_read = sizeof(buffer) < to_read ? sizeof(buffer) : to_read;
      SVN_ERR(read_full_fn(baton, buffer, &bytes_read));
      to_read -= bytes_read;
    }

  return SVN_NO_ERROR;
}

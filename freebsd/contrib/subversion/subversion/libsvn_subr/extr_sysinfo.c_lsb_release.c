
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_9__ {int out; } ;
typedef TYPE_2__ apr_proc_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 int APR_WRITE ;
 scalar_t__ FALSE ;
 int SIGKILL ;
 int SVN_NULL_DEVICE_NAME ;
 int TRUE ;
 int apr_proc_kill (TYPE_2__*,int ) ;
 char const* apr_psprintf (int *,char*,char const*,char*,char const*,char*,...) ;
 char* stringbuf_split_key (TYPE_1__*,char) ;
 scalar_t__ svn_cstring_casecmp (char const*,char*) ;
 int svn_error_clear (int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_io_file_open (int **,int ,int ,int ,int *) ;
 int * svn_io_start_cmd3 (TYPE_2__*,int *,char const* const,char const* const*,int *,scalar_t__,scalar_t__,int *,int ,int *,scalar_t__,int *,int *) ;
 int * svn_io_wait_for_cmd (TYPE_2__*,char*,int *,int *,int *) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_aprfile2 (int ,int ,int *) ;
 int * svn_stream_readline (int *,TYPE_1__**,char*,scalar_t__*,int *) ;

__attribute__((used)) static const char *
lsb_release(apr_pool_t *pool)
{
  static const char *const args[3] =
    {
      "/usr/bin/lsb_release",
      "--all",
      ((void*)0)
    };

  const char *distributor = ((void*)0);
  const char *description = ((void*)0);
  const char *release = ((void*)0);
  const char *codename = ((void*)0);

  apr_proc_t lsbproc;
  svn_stream_t *lsbinfo;
  svn_error_t *err;


  {
    apr_file_t *stdin_handle;
    apr_file_t *stdout_handle;

    err = svn_io_file_open(&stdin_handle, SVN_NULL_DEVICE_NAME,
                           APR_READ, APR_OS_DEFAULT, pool);
    if (!err)
      err = svn_io_file_open(&stdout_handle, SVN_NULL_DEVICE_NAME,
                             APR_WRITE, APR_OS_DEFAULT, pool);
    if (!err)
      err = svn_io_start_cmd3(&lsbproc, ((void*)0), args[0], args, ((void*)0), FALSE,
                              FALSE, stdin_handle,
                              TRUE, ((void*)0),
                              FALSE, stdout_handle,
                              pool);
    if (err)
      {
        svn_error_clear(err);
        return ((void*)0);
      }
  }


  lsbinfo = svn_stream_from_aprfile2(lsbproc.out, TRUE, pool);
  if (lsbinfo)
    {
      for (;;)
        {
          svn_boolean_t eof = FALSE;
          svn_stringbuf_t *line;
          const char *key;

          err = svn_stream_readline(lsbinfo, &line, "\n", &eof, pool);
          if (err || eof)
            break;

          key = stringbuf_split_key(line, ':');
          if (!key)
            continue;

          if (0 == svn_cstring_casecmp(key, "Distributor ID"))
            distributor = line->data;
          else if (0 == svn_cstring_casecmp(key, "Description"))
            description = line->data;
          else if (0 == svn_cstring_casecmp(key, "Release"))
            release = line->data;
          else if (0 == svn_cstring_casecmp(key, "Codename"))
            codename = line->data;
        }
      err = svn_error_compose_create(err,
                                     svn_stream_close(lsbinfo));
      if (err)
        {
          svn_error_clear(err);
          apr_proc_kill(&lsbproc, SIGKILL);
          return ((void*)0);
        }
    }


  err = svn_io_wait_for_cmd(&lsbproc, "", ((void*)0), ((void*)0), pool);
  if (err)
    {
      svn_error_clear(err);
      return ((void*)0);
    }

  if (description)
    return apr_psprintf(pool, "%s%s%s%s", description,
                        (codename ? " (" : ""),
                        (codename ? codename : ""),
                        (codename ? ")" : ""));
  if (distributor)
    return apr_psprintf(pool, "%s%s%s%s%s%s", distributor,
                        (release ? " " : ""),
                        (release ? release : ""),
                        (codename ? " (" : ""),
                        (codename ? codename : ""),
                        (codename ? ")" : ""));

  return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_mtime; } ;
struct p_timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_UNUSED (void*) ;
 int cl_must_pass (int ) ;
 scalar_t__ git_path_isdir (int ) ;
 int p_stat (int ,struct stat*) ;
 int p_utimes (int ,struct p_timeval*) ;

__attribute__((used)) static int touch_file(void *payload, git_buf *path)
{
 struct stat st;
 struct p_timeval times[2];

 GIT_UNUSED(payload);
 if (git_path_isdir(path->ptr))
  return 0;

 cl_must_pass(p_stat(path->ptr, &st));

 times[0].tv_sec = st.st_mtime + 3;
 times[0].tv_usec = 0;
 times[1].tv_sec = st.st_mtime + 3;
 times[1].tv_usec = 0;

 cl_must_pass(p_utimes(path->ptr, times));
 return 0;
}

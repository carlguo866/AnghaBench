
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct path {int dummy; } ;


 int IS_ERR (char*) ;
 char* d_path (struct path const*,char*,size_t) ;
 char* mangle_path (char*,char*,char const*) ;
 int seq_commit (struct seq_file*,int) ;
 size_t seq_get_buf (struct seq_file*,char**) ;

int seq_path(struct seq_file *m, const struct path *path, const char *esc)
{
 char *buf;
 size_t size = seq_get_buf(m, &buf);
 int res = -1;

 if (size) {
  char *p = d_path(path, buf, size);
  if (!IS_ERR(p)) {
   char *end = mangle_path(buf, p, esc);
   if (end)
    res = end - buf;
  }
 }
 seq_commit(m, res);

 return res;
}

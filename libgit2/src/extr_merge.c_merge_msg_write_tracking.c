
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;
typedef int git_filebuf ;


 int merge_msg_write_entries (int *,int *,char*,char*,int ,int *,char) ;

__attribute__((used)) static int merge_msg_write_tracking(
 git_filebuf *file,
 git_vector *entries,
 char sep)
{
 return merge_msg_write_entries(file, entries,
  "remote-tracking branch", "remote-tracking branches", 0, ((void*)0), sep);
}

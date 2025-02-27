
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_desc {int num_spliced; } ;
struct pipe_inode_info {int dummy; } ;
typedef int ssize_t ;
typedef int splice_actor ;


 int splice_from_pipe_begin (struct splice_desc*) ;
 int splice_from_pipe_end (struct pipe_inode_info*,struct splice_desc*) ;
 int splice_from_pipe_feed (struct pipe_inode_info*,struct splice_desc*,int *) ;
 int splice_from_pipe_next (struct pipe_inode_info*,struct splice_desc*) ;

ssize_t __splice_from_pipe(struct pipe_inode_info *pipe, struct splice_desc *sd,
      splice_actor *actor)
{
 int ret;

 splice_from_pipe_begin(sd);
 do {
  ret = splice_from_pipe_next(pipe, sd);
  if (ret > 0)
   ret = splice_from_pipe_feed(pipe, sd, actor);
 } while (ret > 0);
 splice_from_pipe_end(pipe, sd);

 return sd->num_spliced ? sd->num_spliced : ret;
}

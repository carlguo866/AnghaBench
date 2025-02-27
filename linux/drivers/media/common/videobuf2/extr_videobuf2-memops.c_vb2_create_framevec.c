
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_vector {int dummy; } ;


 int EFAULT ;
 int ENOMEM ;
 struct frame_vector* ERR_PTR (int) ;
 unsigned int FOLL_FORCE ;
 unsigned int FOLL_WRITE ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 struct frame_vector* frame_vector_create (unsigned long) ;
 int frame_vector_destroy (struct frame_vector*) ;
 int get_vaddr_frames (unsigned long,unsigned long,unsigned int,struct frame_vector*) ;
 int put_vaddr_frames (struct frame_vector*) ;

struct frame_vector *vb2_create_framevec(unsigned long start,
      unsigned long length)
{
 int ret;
 unsigned long first, last;
 unsigned long nr;
 struct frame_vector *vec;
 unsigned int flags = FOLL_FORCE | FOLL_WRITE;

 first = start >> PAGE_SHIFT;
 last = (start + length - 1) >> PAGE_SHIFT;
 nr = last - first + 1;
 vec = frame_vector_create(nr);
 if (!vec)
  return ERR_PTR(-ENOMEM);
 ret = get_vaddr_frames(start & PAGE_MASK, nr, flags, vec);
 if (ret < 0)
  goto out_destroy;

 if (ret != nr) {
  ret = -EFAULT;
  goto out_release;
 }
 return vec;
out_release:
 put_vaddr_frames(vec);
out_destroy:
 frame_vector_destroy(vec);
 return ERR_PTR(ret);
}

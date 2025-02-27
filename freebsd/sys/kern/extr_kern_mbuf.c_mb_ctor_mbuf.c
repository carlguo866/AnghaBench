
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mb_args {short type; int flags; } ;


 int MPASS (int) ;
 short MT_NOINIT ;
 int M_NOFREE ;
 int m_init (struct mbuf*,int,short,int) ;
 int trash_ctor (void*,int,void*,int) ;

__attribute__((used)) static int
mb_ctor_mbuf(void *mem, int size, void *arg, int how)
{
 struct mbuf *m;
 struct mb_args *args;
 int error;
 int flags;
 short type;




 args = (struct mb_args *)arg;
 type = args->type;





 if (type == MT_NOINIT)
  return (0);

 m = (struct mbuf *)mem;
 flags = args->flags;
 MPASS((flags & M_NOFREE) == 0);

 error = m_init(m, how, type, flags);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigevent {int sigev_signo; int sigev_notify; } ;
struct mq_attr {int mq_maxmsg; int mq_msgsize; } ;
typedef scalar_t__ mqd_t ;


 scalar_t__ EBUSY ;
 int MQNAME ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int PLAIN_REQUIRE_KERNEL_MODULE (char*,int ) ;
 int SIGEV_SIGNAL ;
 int SIGRTMIN ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int mq_close (scalar_t__) ;
 int mq_getattr (scalar_t__,struct mq_attr*) ;
 int mq_notify (scalar_t__,struct sigevent*) ;
 scalar_t__ mq_open (int ,int,int,struct mq_attr*) ;
 int mq_unlink (int ) ;

int
main(void)
{
 struct mq_attr attr, attr2;
 struct sigevent sigev;
 mqd_t mq;
 int status;

 PLAIN_REQUIRE_KERNEL_MODULE("mqueuefs", 0);

 attr.mq_maxmsg = 2;
 attr.mq_msgsize = 100;
 mq = mq_open(MQNAME, O_CREAT | O_RDWR | O_EXCL, 0666, &attr);
 if (mq == (mqd_t)-1)
  err(1, "mq_open");
 status = mq_unlink(MQNAME);
 if (status)
  err(1, "mq_unlink");
 status = mq_getattr(mq, &attr2);
 if (status)
  err(1, "mq_getattr");
 if (attr.mq_maxmsg != attr2.mq_maxmsg)
  err(1, "mq_maxmsg changed");
 if (attr.mq_msgsize != attr2.mq_msgsize)
  err(1, "mq_msgsize changed");

 sigev.sigev_notify = SIGEV_SIGNAL;
 sigev.sigev_signo = SIGRTMIN;
 status = mq_notify(mq, &sigev);
 if (status)
  err(1, "mq_notify");
 status = mq_notify(mq, &sigev);
 if (status == 0)
  err(1, "mq_notify 2");
 else if (errno != EBUSY)
  err(1, "mq_notify 3");
 status = mq_notify(mq, ((void*)0));
 if (status)
  err(1, "mq_notify 4");
 status = mq_close(mq);
 if (status)
  err(1, "mq_close");
 return (0);
}

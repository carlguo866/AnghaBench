
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct visorchannel {int dummy; } ;
struct signal_queue_header {int head; int tail; int max_slots; int num_received; } ;


 int EAGAIN ;
 int SIG_WRITE_FIELD (struct visorchannel*,int ,struct signal_queue_header*,int ) ;
 int mb () ;
 int num_received ;
 int sig_read_data (struct visorchannel*,int ,struct signal_queue_header*,int,void*) ;
 int sig_read_header (struct visorchannel*,int ,struct signal_queue_header*) ;
 int tail ;

__attribute__((used)) static int signalremove_inner(struct visorchannel *channel, u32 queue,
         void *msg)
{
 struct signal_queue_header sig_hdr;
 int error;

 error = sig_read_header(channel, queue, &sig_hdr);
 if (error)
  return error;

 if (sig_hdr.head == sig_hdr.tail)
  return -EAGAIN;
 sig_hdr.tail = (sig_hdr.tail + 1) % sig_hdr.max_slots;
 error = sig_read_data(channel, queue, &sig_hdr, sig_hdr.tail, msg);
 if (error)
  return error;
 sig_hdr.num_received++;




 mb();
 error = SIG_WRITE_FIELD(channel, queue, &sig_hdr, tail);
 if (error)
  return error;
 error = SIG_WRITE_FIELD(channel, queue, &sig_hdr, num_received);
 if (error)
  return error;
 return 0;
}

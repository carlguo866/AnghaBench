
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_23__ {scalar_t__* Buf; scalar_t__ Size; scalar_t__ PriorityQoS; } ;
struct TYPE_22__ {int size; int pos; scalar_t__ p; } ;
struct TYPE_21__ {int CipherName; int RemoteHostname; int LocalPort; int LocalIP; int RemotePort; int RemoteIP; } ;
struct TYPE_20__ {int EstablishedCount; int Interrupt; int SendQueue; scalar_t__ Disconnected; int RecvQueue; } ;
typedef TYPE_1__ SSTP_SERVER ;
typedef int SOCK_EVENT ;
typedef TYPE_2__ SOCK ;
typedef TYPE_3__ FIFO ;
typedef int CEDAR ;
typedef TYPE_4__ BLOCK ;


 int Disconnect (TYPE_2__*) ;
 int Free (scalar_t__*) ;
 int FreeBlock (TYPE_4__*) ;
 int FreeSstpServer (TYPE_1__*) ;
 TYPE_4__* GetNext (int ) ;
 scalar_t__ GetNextIntervalForInterrupt (int ) ;
 int InsertQueue (int ,TYPE_4__*) ;
 scalar_t__ MAX_BUFFERING_PACKET_SIZE ;
 int MIN (scalar_t__,scalar_t__) ;
 scalar_t__* Malloc (scalar_t__) ;
 TYPE_4__* NewBlock (scalar_t__*,scalar_t__,int ) ;
 TYPE_3__* NewFifo () ;
 TYPE_1__* NewSstpServer (int *,int *,int ,int *,int ,int *,int ,int ) ;
 int READ_USHORT (scalar_t__*) ;
 int ReadFifo (TYPE_3__*,scalar_t__*,scalar_t__) ;
 scalar_t__ Recv (TYPE_2__*,scalar_t__*,scalar_t__,int) ;
 int ReleaseFifo (TYPE_3__*) ;
 scalar_t__ SELECT_TIME ;
 scalar_t__ SOCK_LATER ;
 scalar_t__ SSTP_VERSION_1 ;
 scalar_t__ Send (TYPE_2__*,scalar_t__*,scalar_t__,int) ;
 int SstpProcessInterrupt (TYPE_1__*) ;
 int WaitSockEvent (int *,int ) ;
 int WriteFifo (TYPE_3__*,scalar_t__*,scalar_t__) ;
 int YieldCpu () ;

bool ProcessSstpHttps(CEDAR *cedar, SOCK *s, SOCK_EVENT *se)
{
 UINT tmp_size = 65536;
 UCHAR *tmp_buf;
 FIFO *recv_fifo;
 FIFO *send_fifo;
 SSTP_SERVER *sstp;
 bool ret = 0;

 if (cedar == ((void*)0) || s == ((void*)0) || se == ((void*)0))
 {
  return 0;
 }

 tmp_buf = Malloc(tmp_size);
 recv_fifo = NewFifo();
 send_fifo = NewFifo();

 sstp = NewSstpServer(cedar, &s->RemoteIP, s->RemotePort, &s->LocalIP, s->LocalPort, se,
  s->RemoteHostname, s->CipherName);

 while (1)
 {
  UINT r;
  bool is_disconnected = 0;
  bool state_changed = 0;


  while (1)
  {
   r = Recv(s, tmp_buf, tmp_size, 1);
   if (r == 0)
   {

    is_disconnected = 1;
    break;
   }
   else if (r == SOCK_LATER)
   {

    break;
   }
   else
   {

    WriteFifo(recv_fifo, tmp_buf, r);
    state_changed = 1;
   }
  }

  while (recv_fifo->size >= 4)
  {
   UCHAR *first4;
   UINT read_size = 0;
   bool ok = 0;

   first4 = ((UCHAR *)recv_fifo->p) + recv_fifo->pos;
   if (first4[0] == SSTP_VERSION_1)
   {
    USHORT len = READ_USHORT(first4 + 2) & 0xFFF;
    if (len >= 4)
    {
     ok = 1;

     if (recv_fifo->size >= len)
     {
      UCHAR *data;
      BLOCK *b;

      read_size = len;
      data = Malloc(read_size);

      ReadFifo(recv_fifo, data, read_size);

      b = NewBlock(data, read_size, 0);

      InsertQueue(sstp->RecvQueue, b);
     }
    }
   }

   if (read_size == 0)
   {
    break;
   }

   if (ok == 0)
   {

    is_disconnected = 1;
    break;
   }
  }


  SstpProcessInterrupt(sstp);

  if (sstp->Disconnected)
  {
   is_disconnected = 1;
  }


  while (1)
  {
   BLOCK *b = GetNext(sstp->SendQueue);

   if (b == ((void*)0))
   {
    break;
   }



   if (b->PriorityQoS || (send_fifo->size <= MAX_BUFFERING_PACKET_SIZE))
   {
    WriteFifo(send_fifo, b->Buf, b->Size);
   }

   FreeBlock(b);
  }


  while (send_fifo->size != 0)
  {
   r = Send(s, ((UCHAR *)send_fifo->p) + send_fifo->pos, send_fifo->size, 1);
   if (r == 0)
   {

    is_disconnected = 1;
    break;
   }
   else if (r == SOCK_LATER)
   {

    break;
   }
   else
   {

    ReadFifo(send_fifo, ((void*)0), r);
    state_changed = 1;
   }
  }

  if (is_disconnected)
  {

   break;
  }


  if (state_changed == 0)
  {
   UINT select_time = SELECT_TIME;
   UINT r = GetNextIntervalForInterrupt(sstp->Interrupt);
   WaitSockEvent(se, MIN(r, select_time));
  }
 }

 if (sstp != ((void*)0) && sstp->EstablishedCount >= 1)
 {
  ret = 1;
 }

 FreeSstpServer(sstp);

 ReleaseFifo(recv_fifo);
 ReleaseFifo(send_fifo);
 Free(tmp_buf);

 YieldCpu();
 Disconnect(s);

 return ret;
}

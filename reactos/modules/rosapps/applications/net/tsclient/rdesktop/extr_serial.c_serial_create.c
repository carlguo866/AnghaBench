
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32 ;
struct termios {int c_iflag; int c_lflag; int c_cflag; int c_oflag; } ;
struct TYPE_8__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_7__ {int read_total_timeout_constant; scalar_t__ event_pending; scalar_t__ event_rlsd; scalar_t__ event_dsr; scalar_t__ event_cts; scalar_t__ event_txempty; struct termios* ptermios; int rts; int dtr; int word_length; int parity; int stop_bits; int baud_rate; } ;
struct TYPE_6__ {char* name; int handle; int local_path; scalar_t__ pdevice_data; } ;
typedef TYPE_2__ SERIAL_DEVICE ;
typedef TYPE_3__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;


 int BRKINT ;
 int CS8 ;
 int CSIZE ;
 int DEBUG_SERIAL (char*) ;
 int ECHO ;
 int ECHONL ;
 int F_SETFL ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int INLCR ;
 int ISIG ;
 int ISTRIP ;
 int IXON ;
 int OPOST ;
 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int PARENB ;
 int PARMRK ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_SUCCESS ;
 int TCSANOW ;
 int fcntl (int,int ,int) ;
 int fflush (int ) ;
 int get_termios (TYPE_2__*,int) ;
 int open (int ,int) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int stdout ;
 int tcsetattr (int,int ,struct termios*) ;

__attribute__((used)) static NTSTATUS
serial_create(RDPCLIENT * This, uint32 device_id, uint32 access, uint32 share_mode, uint32 disposition,
       uint32 flags_and_attributes, char *filename, NTHANDLE * handle)
{
 NTHANDLE serial_fd;
 SERIAL_DEVICE *pser_inf;
 struct termios *ptermios;

 pser_inf = (SERIAL_DEVICE *) This->rdpdr_device[device_id].pdevice_data;
 ptermios = pser_inf->ptermios;
 serial_fd = open(This->rdpdr_device[device_id].local_path, O_RDWR | O_NOCTTY | O_NONBLOCK);

 if (serial_fd == -1)
 {
  perror("open");
  return STATUS_ACCESS_DENIED;
 }

 if (!get_termios(pser_inf, serial_fd))
 {
  printf("INFO: SERIAL %s access denied\n", This->rdpdr_device[device_id].name);
  fflush(stdout);
  return STATUS_ACCESS_DENIED;
 }


 This->rdpdr_device[device_id].handle = serial_fd;


 DEBUG_SERIAL(("INFO: SERIAL %s to %s\nINFO: speed %u baud, stop bits %u, parity %u, word length %u bits, dtr %u, rts %u\n", This->rdpdr_device[device_id].name, This->rdpdr_device[device_id].local_path, pser_inf->baud_rate, pser_inf->stop_bits, pser_inf->parity, pser_inf->word_length, pser_inf->dtr, pser_inf->rts));

 pser_inf->ptermios->c_iflag &=
  ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL | IXON);
 pser_inf->ptermios->c_oflag &= ~OPOST;
 pser_inf->ptermios->c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
 pser_inf->ptermios->c_cflag &= ~(CSIZE | PARENB);
 pser_inf->ptermios->c_cflag |= CS8;

 tcsetattr(serial_fd, TCSANOW, pser_inf->ptermios);

 pser_inf->event_txempty = 0;
 pser_inf->event_cts = 0;
 pser_inf->event_dsr = 0;
 pser_inf->event_rlsd = 0;
 pser_inf->event_pending = 0;

 *handle = serial_fd;


 if (fcntl(*handle, F_SETFL, O_NONBLOCK) == -1)
  perror("fcntl");

 pser_inf->read_total_timeout_constant = 5;

 return STATUS_SUCCESS;
}

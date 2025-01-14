
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int fd; } ;
struct connectdata {int * sock; } ;
typedef size_t ssize_t ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_SEND_ERROR ;
 unsigned char CURL_IAC ;
 int Curl_poll (struct pollfd*,int,int) ;
 int Curl_write (struct connectdata*,int ,unsigned char*,size_t,size_t*) ;
 size_t FIRSTSOCKET ;
 int POLLOUT ;
 int free (unsigned char*) ;
 unsigned char* malloc (size_t) ;

__attribute__((used)) static CURLcode send_telnet_data(struct connectdata *conn,
                                 char *buffer, ssize_t nread)
{
  ssize_t escapes, i, outlen;
  unsigned char *outbuf = ((void*)0);
  CURLcode result = CURLE_OK;
  ssize_t bytes_written, total_written;


  escapes = 0;
  for(i = 0; i < nread; i++)
    if((unsigned char)buffer[i] == CURL_IAC)
      escapes++;
  outlen = nread + escapes;

  if(outlen == nread)
    outbuf = (unsigned char *)buffer;
  else {
    ssize_t j;
    outbuf = malloc(nread + escapes + 1);
    if(!outbuf)
      return CURLE_OUT_OF_MEMORY;

    j = 0;
    for(i = 0; i < nread; i++) {
      outbuf[j++] = buffer[i];
      if((unsigned char)buffer[i] == CURL_IAC)
        outbuf[j++] = CURL_IAC;
    }
    outbuf[j] = '\0';
  }

  total_written = 0;
  while(!result && total_written < outlen) {

    struct pollfd pfd[1];
    pfd[0].fd = conn->sock[FIRSTSOCKET];
    pfd[0].events = POLLOUT;
    switch(Curl_poll(pfd, 1, -1)) {
      case -1:
      case 0:
        result = CURLE_SEND_ERROR;
        break;
      default:
        bytes_written = 0;
        result = Curl_write(conn, conn->sock[FIRSTSOCKET],
                            outbuf + total_written,
                            outlen - total_written,
                            &bytes_written);
        total_written += bytes_written;
        break;
    }
  }


  if(outbuf != (unsigned char *)buffer)
    free(outbuf);

  return result;
}

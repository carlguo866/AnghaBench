
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* ipstr; struct TYPE_6__* next; int port; } ;
struct TYPE_5__ {int numOfThreads; char* label; TYPE_1__* pThreadObj; } ;
struct TYPE_4__ {int threadId; int numOfFds; TYPE_3__* pHead; } ;
typedef TYPE_1__ SThreadObj ;
typedef TYPE_2__ SServerObj ;
typedef TYPE_3__ SFdObj ;


 int sprintf (char*,char*,char*,...) ;
 int strlen (char*) ;
 int tError (char*,char*,int,int,int) ;

void taosListTcpConnection(void *handle, char *buffer) {
  SServerObj *pServerObj;
  SThreadObj *pThreadObj;
  SFdObj * pFdObj;
  int i, numOfFds, numOfConns;
  char * msg;

  pServerObj = (SServerObj *)handle;
  buffer[0] = 0;
  msg = buffer;
  numOfConns = 0;

  pThreadObj = pServerObj->pThreadObj;

  for (i = 0; i < pServerObj->numOfThreads; ++i) {
    numOfFds = 0;
    sprintf(msg, "TCP:%s Thread:%d number of connections:%d\n", pServerObj->label, pThreadObj->threadId,
            pThreadObj->numOfFds);
    msg = msg + strlen(msg);
    pFdObj = pThreadObj->pHead;
    while (pFdObj) {
      sprintf("   ip:%s port:%u\n", pFdObj->ipstr, pFdObj->port);
      msg = msg + strlen(msg);
      numOfFds++;
      numOfConns++;
      pFdObj = pFdObj->next;
    }

    if (numOfFds != pThreadObj->numOfFds)
      tError("TCP:%s thread:%d BIG error, numOfFds:%d actual numOfFds:%d", pServerObj->label, pThreadObj->threadId,
             pThreadObj->numOfFds, numOfFds);

    pThreadObj++;
  }

  sprintf(msg, "TCP:%s total connections:%d\n", pServerObj->label, numOfConns);

  return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* pThread; TYPE_2__* session; } ;
struct TYPE_8__ {int serverMutex; scalar_t__ sessionExpire; } ;
struct TYPE_7__ {scalar_t__ expire; struct TYPE_7__* signature; } ;
struct TYPE_6__ {TYPE_3__* pServer; } ;
typedef TYPE_3__ HttpServer ;
typedef TYPE_4__ HttpContext ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ taosGetTimestampSec () ;

void httpAccessSession(HttpContext *pContext) {
  HttpServer *server = pContext->pThread->pServer;
  pthread_mutex_lock(&server->serverMutex);
  if (pContext->session == pContext->session->signature) {
    pContext->session->expire = (int) taosGetTimestampSec() + pContext->pThread->pServer->sessionExpire;
  }
  pthread_mutex_unlock(&server->serverMutex);
}

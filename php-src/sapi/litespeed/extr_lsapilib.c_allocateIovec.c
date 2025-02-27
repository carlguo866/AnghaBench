
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iovec {int dummy; } ;
struct TYPE_3__ {struct iovec* m_pIovecEnd; struct iovec* m_pIovec; struct iovec* m_pIovecCur; struct iovec* m_pIovecToWrite; } ;
typedef TYPE_1__ LSAPI_Request ;


 scalar_t__ realloc (struct iovec*,int) ;

__attribute__((used)) static int allocateIovec( LSAPI_Request * pReq, int n )
{
    struct iovec * p = (struct iovec *)realloc(
                pReq->m_pIovec, sizeof(struct iovec) * n );
    if ( !p )
        return -1;
    pReq->m_pIovecToWrite = p + ( pReq->m_pIovecToWrite - pReq->m_pIovec );
    pReq->m_pIovecCur = p + ( pReq->m_pIovecCur - pReq->m_pIovec );
    pReq->m_pIovec = p;
    pReq->m_pIovecEnd = p + n;
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int ip; } ;
struct TYPE_14__ {int name; } ;
struct TYPE_13__ {int db; } ;
struct TYPE_12__ {char* payload; int payloadLen; int msgType; } ;
struct TYPE_11__ {TYPE_1__* pTscObj; TYPE_3__ cmd; } ;
struct TYPE_10__ {int db; } ;
typedef TYPE_1__ STscObj ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSqlCmd ;
typedef TYPE_4__ SMgmtHead ;
typedef TYPE_5__ SMeterMetaInfo ;
typedef TYPE_6__ SDropDnodeMsg ;


 int TSDB_MSG_TYPE_DROP_PNODE ;
 int strcpy (int ,int ) ;
 int tsRpcHeadSize ;
 TYPE_5__* tscGetMeterMetaInfo (TYPE_3__*,int ) ;

int tscBuildDropDnodeMsg(SSqlObj *pSql) {
  SDropDnodeMsg *pDrop;
  char * pMsg, *pStart;
  int msgLen = 0;

  SSqlCmd * pCmd = &pSql->cmd;
  STscObj * pObj = pSql->pTscObj;
  SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  pMsg = pCmd->payload + tsRpcHeadSize;
  pStart = pMsg;

  SMgmtHead *pMgmt = (SMgmtHead *)pMsg;
  strcpy(pMgmt->db, pObj->db);
  pMsg += sizeof(SMgmtHead);

  pDrop = (SDropDnodeMsg *)pMsg;
  strcpy(pDrop->ip, pMeterMetaInfo->name);

  pMsg += sizeof(SDropDnodeMsg);

  msgLen = pMsg - pStart;
  pCmd->payloadLen = msgLen;
  pCmd->msgType = TSDB_MSG_TYPE_DROP_PNODE;

  return msgLen;
}

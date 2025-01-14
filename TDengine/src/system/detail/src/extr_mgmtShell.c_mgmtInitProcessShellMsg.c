
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t TSDB_MSG_TYPE_ALTER_ACCT ;
 size_t TSDB_MSG_TYPE_ALTER_DB ;
 size_t TSDB_MSG_TYPE_ALTER_TABLE ;
 size_t TSDB_MSG_TYPE_ALTER_USER ;
 size_t TSDB_MSG_TYPE_CFG_MNODE ;
 size_t TSDB_MSG_TYPE_CFG_PNODE ;
 size_t TSDB_MSG_TYPE_CONNECT ;
 size_t TSDB_MSG_TYPE_CREATE_ACCT ;
 size_t TSDB_MSG_TYPE_CREATE_DB ;
 size_t TSDB_MSG_TYPE_CREATE_MNODE ;
 size_t TSDB_MSG_TYPE_CREATE_PNODE ;
 size_t TSDB_MSG_TYPE_CREATE_TABLE ;
 size_t TSDB_MSG_TYPE_CREATE_USER ;
 size_t TSDB_MSG_TYPE_DROP_ACCT ;
 size_t TSDB_MSG_TYPE_DROP_DB ;
 size_t TSDB_MSG_TYPE_DROP_MNODE ;
 size_t TSDB_MSG_TYPE_DROP_PNODE ;
 size_t TSDB_MSG_TYPE_DROP_TABLE ;
 size_t TSDB_MSG_TYPE_DROP_USER ;
 size_t TSDB_MSG_TYPE_HEARTBEAT ;
 size_t TSDB_MSG_TYPE_KILL_CONNECTION ;
 size_t TSDB_MSG_TYPE_KILL_QUERY ;
 size_t TSDB_MSG_TYPE_KILL_STREAM ;
 size_t TSDB_MSG_TYPE_METERINFO ;
 size_t TSDB_MSG_TYPE_METRIC_META ;
 size_t TSDB_MSG_TYPE_MULTI_METERINFO ;
 size_t TSDB_MSG_TYPE_RETRIEVE ;
 size_t TSDB_MSG_TYPE_SHOW ;
 size_t TSDB_MSG_TYPE_USE_DB ;
 int mgmtProcessAlterAcctMsg ;
 int mgmtProcessAlterDbMsg ;
 int mgmtProcessAlterTableMsg ;
 int mgmtProcessAlterUserMsg ;
 int mgmtProcessCfgDnodeMsg ;
 int mgmtProcessCfgMnodeMsg ;
 int mgmtProcessConnectMsg ;
 int mgmtProcessCreateAcctMsg ;
 int mgmtProcessCreateDbMsg ;
 int mgmtProcessCreateDnodeMsg ;
 int mgmtProcessCreateMnodeMsg ;
 int mgmtProcessCreateTableMsg ;
 int mgmtProcessCreateUserMsg ;
 int mgmtProcessDropAcctMsg ;
 int mgmtProcessDropDbMsg ;
 int mgmtProcessDropDnodeMsg ;
 int mgmtProcessDropMnodeMsg ;
 int mgmtProcessDropTableMsg ;
 int mgmtProcessDropUserMsg ;
 int mgmtProcessHeartBeatMsg ;
 int mgmtProcessKillConnectionMsg ;
 int mgmtProcessKillQueryMsg ;
 int mgmtProcessKillStreamMsg ;
 int mgmtProcessMeterMetaMsg ;
 int mgmtProcessMetricMetaMsg ;
 int mgmtProcessMultiMeterMetaMsg ;
 int mgmtProcessRetrieveMsg ;
 int * mgmtProcessShellMsg ;
 int mgmtProcessShowMsg ;
 int mgmtProcessUseDbMsg ;

void mgmtInitProcessShellMsg() {
  mgmtProcessShellMsg[TSDB_MSG_TYPE_METERINFO] = mgmtProcessMeterMetaMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_METRIC_META] = mgmtProcessMetricMetaMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_MULTI_METERINFO] = mgmtProcessMultiMeterMetaMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_CREATE_DB] = mgmtProcessCreateDbMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_ALTER_DB] = mgmtProcessAlterDbMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_CREATE_USER] = mgmtProcessCreateUserMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_ALTER_USER] = mgmtProcessAlterUserMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_CREATE_ACCT] = mgmtProcessCreateAcctMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_DROP_DB] = mgmtProcessDropDbMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_DROP_USER] = mgmtProcessDropUserMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_DROP_ACCT] = mgmtProcessDropAcctMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_ALTER_ACCT] = mgmtProcessAlterAcctMsg;

  mgmtProcessShellMsg[TSDB_MSG_TYPE_CREATE_TABLE] = mgmtProcessCreateTableMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_DROP_TABLE] = mgmtProcessDropTableMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_ALTER_TABLE] = mgmtProcessAlterTableMsg;

  mgmtProcessShellMsg[TSDB_MSG_TYPE_USE_DB] = mgmtProcessUseDbMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_RETRIEVE] = mgmtProcessRetrieveMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_SHOW] = mgmtProcessShowMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_CONNECT] = mgmtProcessConnectMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_HEARTBEAT] = mgmtProcessHeartBeatMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_CREATE_PNODE] = mgmtProcessCreateDnodeMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_DROP_PNODE] = mgmtProcessDropDnodeMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_CREATE_MNODE] = mgmtProcessCreateMnodeMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_DROP_MNODE] = mgmtProcessDropMnodeMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_CFG_MNODE] = mgmtProcessCfgMnodeMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_CFG_PNODE] = mgmtProcessCfgDnodeMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_KILL_QUERY] = mgmtProcessKillQueryMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_KILL_STREAM] = mgmtProcessKillStreamMsg;
  mgmtProcessShellMsg[TSDB_MSG_TYPE_KILL_CONNECTION] = mgmtProcessKillConnectionMsg;
}

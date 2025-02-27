
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int commandsSent; TYPE_3__* currentTask; TYPE_7__* connection; TYPE_2__* workerPool; } ;
typedef TYPE_1__ WorkerSession ;
struct TYPE_19__ {int idleConnectionCount; int unusedConnectionCount; TYPE_8__* distributedExecution; } ;
typedef TYPE_2__ WorkerPool ;
struct TYPE_20__ {int executionState; int * shardPlacement; TYPE_5__* shardCommandExecution; } ;
typedef TYPE_3__ TaskPlacementExecution ;
struct TYPE_21__ {char* queryString; } ;
typedef TYPE_4__ Task ;
struct TYPE_25__ {TYPE_6__* paramListInfo; } ;
struct TYPE_24__ {void* connectionState; int pgConn; } ;
struct TYPE_23__ {int numParams; } ;
struct TYPE_22__ {TYPE_4__* task; } ;
typedef int ShardPlacement ;
typedef TYPE_5__ ShardCommandExecution ;
typedef TYPE_6__* ParamListInfo ;
typedef int Oid ;
typedef TYPE_7__ MultiConnection ;
typedef int List ;
typedef TYPE_8__ DistributedExecution ;


 int AssignPlacementListToConnection (int *,TYPE_7__*) ;
 int ExtractParametersForRemoteExecution (TYPE_6__*,int **,char const***) ;
 void* MULTI_CONNECTION_LOST ;
 int PLACEMENT_EXECUTION_RUNNING ;
 int PQsetSingleRowMode (int ) ;
 int * PlacementAccessListForTask (TYPE_4__*,int *) ;
 int SendRemoteCommand (TYPE_7__*,char*) ;
 int SendRemoteCommandParams (TYPE_7__*,char*,int,int *,char const**) ;
 TYPE_6__* copyParamList (TYPE_6__*) ;

__attribute__((used)) static bool
StartPlacementExecutionOnSession(TaskPlacementExecution *placementExecution,
         WorkerSession *session)
{
 WorkerPool *workerPool = session->workerPool;
 DistributedExecution *execution = workerPool->distributedExecution;
 ParamListInfo paramListInfo = execution->paramListInfo;
 MultiConnection *connection = session->connection;
 ShardCommandExecution *shardCommandExecution =
  placementExecution->shardCommandExecution;
 Task *task = shardCommandExecution->task;
 ShardPlacement *taskPlacement = placementExecution->shardPlacement;
 List *placementAccessList = PlacementAccessListForTask(task, taskPlacement);
 char *queryString = task->queryString;
 int querySent = 0;
 int singleRowMode = 0;





 AssignPlacementListToConnection(placementAccessList, connection);


 session->commandsSent++;

 if (session->commandsSent == 1)
 {

  workerPool->unusedConnectionCount--;
 }


 workerPool->idleConnectionCount--;
 session->currentTask = placementExecution;
 placementExecution->executionState = PLACEMENT_EXECUTION_RUNNING;

 if (paramListInfo != ((void*)0))
 {
  int parameterCount = paramListInfo->numParams;
  Oid *parameterTypes = ((void*)0);
  const char **parameterValues = ((void*)0);


  paramListInfo = copyParamList(paramListInfo);

  ExtractParametersForRemoteExecution(paramListInfo, &parameterTypes,
           &parameterValues);
  querySent = SendRemoteCommandParams(connection, queryString, parameterCount,
           parameterTypes, parameterValues);
 }
 else
 {
  querySent = SendRemoteCommand(connection, queryString);
 }

 if (querySent == 0)
 {
  connection->connectionState = MULTI_CONNECTION_LOST;
  return 0;
 }

 singleRowMode = PQsetSingleRowMode(connection->pgConn);
 if (singleRowMode == 0)
 {
  connection->connectionState = MULTI_CONNECTION_LOST;
  return 0;
 }

 return 1;
}

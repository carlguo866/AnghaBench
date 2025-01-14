
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_19__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef size_t int32_t ;
typedef size_t int16_t ;
struct TYPE_35__ {size_t columnIndex; int tableIndex; } ;
struct TYPE_34__ {int member_0; } ;
struct TYPE_33__ {TYPE_19__* pMeterMeta; } ;
struct TYPE_32__ {size_t type; size_t bytes; char* name; } ;
struct TYPE_28__ {size_t numOfOutputCols; } ;
struct TYPE_27__ {size_t numOfGroupCols; int tableIndex; TYPE_10__* columnInfo; } ;
struct TYPE_31__ {scalar_t__ nAggTimeInterval; TYPE_2__ fieldsInfo; TYPE_1__ groupbyExpr; } ;
struct TYPE_29__ {scalar_t__ colId; int flag; } ;
struct TYPE_30__ {TYPE_3__ colInfo; } ;
struct TYPE_26__ {size_t numOfColumns; } ;
struct TYPE_25__ {size_t colIdx; scalar_t__ colId; int flag; } ;
typedef TYPE_4__ SSqlExpr ;
typedef TYPE_5__ SSqlCmd ;
typedef TYPE_6__ SSchema ;
typedef TYPE_7__ SMeterMetaInfo ;
typedef TYPE_8__ SColumnList ;
typedef TYPE_9__ SColumnIndex ;
typedef TYPE_10__ SColIndexEx ;


 size_t TSDB_CODE_INVALID_SQL ;
 size_t TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_COL_IS_TAG (int ) ;
 int TSDB_COL_TAG ;
 size_t TSDB_DATA_TYPE_BINARY ;
 int TSDB_FUNC_TAG ;
 size_t TSDB_METER_NAME_LEN ;
 scalar_t__ TSDB_TBNAME_COLUMN_INDEX ;
 char* TSQL_TBNAME_L ;
 int doAddGroupColumnForSubquery (TYPE_5__*,size_t) ;
 int insertResultField (TYPE_5__*,size_t,TYPE_8__*,size_t,size_t,char*) ;
 int setErrMsg (TYPE_5__*,char const*) ;
 TYPE_6__* tsGetSchema (TYPE_19__*) ;
 TYPE_7__* tscGetMeterMetaInfo (TYPE_5__*,int ) ;
 TYPE_4__* tscSqlExprGet (TYPE_5__*,size_t) ;
 TYPE_4__* tscSqlExprInsert (TYPE_5__*,size_t,int ,TYPE_9__*,size_t,size_t,size_t) ;

__attribute__((used)) static int32_t doAddGroupbyColumnsOnDemand(SSqlCmd* pCmd) {
  const char* msg2 = "interval not allowed in group by normal column";

  SMeterMetaInfo* pMeterMetaInfo = tscGetMeterMetaInfo(pCmd, 0);

  SSchema* pSchema = tsGetSchema(pMeterMetaInfo->pMeterMeta);
  int16_t bytes = 0;
  int16_t type = 0;
  char* name = ((void*)0);

  for (int32_t i = 0; i < pCmd->groupbyExpr.numOfGroupCols; ++i) {
    SColIndexEx* pColIndex = &pCmd->groupbyExpr.columnInfo[i];

    int16_t colIndex = pColIndex->colIdx;
    if (pColIndex->colIdx == TSDB_TBNAME_COLUMN_INDEX) {
      type = TSDB_DATA_TYPE_BINARY;
      bytes = TSDB_METER_NAME_LEN;
      name = TSQL_TBNAME_L;
    } else {
      colIndex = (TSDB_COL_IS_TAG(pColIndex->flag)) ? pMeterMetaInfo->pMeterMeta->numOfColumns + pColIndex->colIdx
                                                    : pColIndex->colIdx;

      type = pSchema[colIndex].type;
      bytes = pSchema[colIndex].bytes;
      name = pSchema[colIndex].name;
    }

    if (TSDB_COL_IS_TAG(pColIndex->flag)) {
      SColumnIndex index = {.tableIndex = pCmd->groupbyExpr.tableIndex, .columnIndex = colIndex};

      SSqlExpr* pExpr =
          tscSqlExprInsert(pCmd, pCmd->fieldsInfo.numOfOutputCols, TSDB_FUNC_TAG, &index, type, bytes, bytes);

      pExpr->colInfo.flag = TSDB_COL_TAG;


      SColumnList ids = {0};
      insertResultField(pCmd, pCmd->fieldsInfo.numOfOutputCols, &ids, bytes, type, name);
    } else {

      if (pCmd->nAggTimeInterval > 0) {
        setErrMsg(pCmd, msg2);
        return TSDB_CODE_INVALID_SQL;
      }

      bool hasGroupColumn = 0;
      for (int32_t j = 0; j < pCmd->fieldsInfo.numOfOutputCols; ++j) {
        SSqlExpr* pExpr = tscSqlExprGet(pCmd, j);
        if (pExpr->colInfo.colId == pColIndex->colId) {
          break;
        }
      }





      if (!hasGroupColumn) {
        doAddGroupColumnForSubquery(pCmd, i);
      }
    }
  }

  return TSDB_CODE_SUCCESS;
}

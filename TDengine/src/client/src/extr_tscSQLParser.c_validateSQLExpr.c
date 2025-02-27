
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int dKey; } ;
struct TYPE_11__ {scalar_t__ n; int z; } ;
struct TYPE_14__ {scalar_t__ nSQLOptr; TYPE_3__ val; TYPE_1__ colInfo; } ;
typedef TYPE_4__ tSQLExpr ;
typedef size_t int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_16__ {int num; TYPE_2__* ids; } ;
struct TYPE_17__ {TYPE_6__ list; } ;
struct TYPE_15__ {scalar_t__ type; int name; } ;
struct TYPE_12__ {scalar_t__ columnIndex; } ;
typedef TYPE_5__ SSchema ;
typedef TYPE_6__ SColumnList ;
typedef TYPE_7__ SColumnIdListRes ;


 scalar_t__ TK_FLOAT ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_LAST_ROW ;
 scalar_t__ TK_MIN ;
 size_t TSDB_CODE_INVALID_SQL ;
 size_t TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_DATA_TYPE_DOUBLE ;
 scalar_t__ TSDB_DATA_TYPE_TINYINT ;
 scalar_t__ isinf (int ) ;
 scalar_t__ isnan (int ) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncasecmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int32_t validateSQLExpr(tSQLExpr* pExpr, SSchema* pSchema, int32_t numOfCols, SColumnIdListRes* pList) {
  if (pExpr->nSQLOptr == TK_ID) {
    bool validColumnName = 0;

    SColumnList* list = &pList->list;

    for (int32_t i = 0; i < numOfCols; ++i) {
      if (strncasecmp(pExpr->colInfo.z, pSchema[i].name, pExpr->colInfo.n) == 0 &&
          pExpr->colInfo.n == strlen(pSchema[i].name)) {
        if (pSchema[i].type < TSDB_DATA_TYPE_TINYINT || pSchema[i].type > TSDB_DATA_TYPE_DOUBLE) {
          return TSDB_CODE_INVALID_SQL;
        }

        if (pList != ((void*)0)) {
          list->ids[list->num++].columnIndex = (int16_t)i;
        }

        validColumnName = 1;
      }
    }

    if (!validColumnName) {
      return TSDB_CODE_INVALID_SQL;
    }

  } else if (pExpr->nSQLOptr == TK_FLOAT && (isnan(pExpr->val.dKey) || isinf(pExpr->val.dKey))) {
    return TSDB_CODE_INVALID_SQL;
  } else if (pExpr->nSQLOptr >= TK_MIN && pExpr->nSQLOptr <= TK_LAST_ROW) {
    return TSDB_CODE_INVALID_SQL;
  }

  return TSDB_CODE_SUCCESS;
}

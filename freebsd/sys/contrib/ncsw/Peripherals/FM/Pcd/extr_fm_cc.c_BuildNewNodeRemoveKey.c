
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int t_Handle ;
struct TYPE_17__ {int numOfKeys; scalar_t__ h_FrmReplicForRmv; scalar_t__ p_StatsObjForRmv; scalar_t__ h_ManipForRmv; int h_NodeForRmv; int p_AdTableOld; int p_AdTableNew; int p_KeysMatchTableNew; int p_KeysMatchTableOld; } ;
typedef TYPE_6__ t_FmPcdModifyCcKeyAdditionalParams ;
struct TYPE_18__ {int numOfKeys; TYPE_5__* keyAndNextEngineParams; } ;
typedef TYPE_7__ t_FmPcdCcNode ;
typedef scalar_t__ t_Error ;
struct TYPE_13__ {scalar_t__ h_FrmReplic; } ;
struct TYPE_12__ {int h_CcNode; } ;
struct TYPE_14__ {TYPE_2__ frParams; TYPE_1__ ccParams; } ;
struct TYPE_15__ {scalar_t__ nextEngine; TYPE_3__ params; scalar_t__ h_Manip; } ;
struct TYPE_16__ {TYPE_4__ nextEngineParams; scalar_t__ p_StatsObj; } ;


 scalar_t__ BuildNewNodeCommonPart (TYPE_7__*,int*,TYPE_6__*) ;
 scalar_t__ E_OK ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int MAJOR ;
 int MemCpy8 (int ,int ,int) ;
 int NO_MSG ;
 int PTR_MOVE (int ,int) ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;
 scalar_t__ e_FM_PCD_CC ;
 scalar_t__ e_FM_PCD_FR ;

__attribute__((used)) static t_Error BuildNewNodeRemoveKey(
        t_FmPcdCcNode *p_CcNode, uint16_t keyIndex,
        t_FmPcdModifyCcKeyAdditionalParams *p_AdditionalInfo)
{
    int i = 0, j = 0;
    t_Handle p_AdTableNewTmp, p_KeysMatchTableNewTmp;
    t_Handle p_KeysMatchTableOldTmp, p_AdTableOldTmp;
    int size;
    t_Error err = E_OK;


    p_AdditionalInfo->numOfKeys = (uint16_t)(p_CcNode->numOfKeys - 1);


    err = BuildNewNodeCommonPart(p_CcNode, &size, p_AdditionalInfo);
    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);


    for (i = 0, j = 0; j < p_CcNode->numOfKeys; i++, j++)
    {
        if (j == keyIndex)
            j++;

        if (j == p_CcNode->numOfKeys)
            break;
        p_AdTableNewTmp =
                PTR_MOVE(p_AdditionalInfo->p_AdTableNew, i * FM_PCD_CC_AD_ENTRY_SIZE);
        p_AdTableOldTmp =
                PTR_MOVE(p_AdditionalInfo->p_AdTableOld, j * FM_PCD_CC_AD_ENTRY_SIZE);
        MemCpy8(p_AdTableNewTmp, p_AdTableOldTmp, FM_PCD_CC_AD_ENTRY_SIZE);

        p_KeysMatchTableOldTmp =
                PTR_MOVE(p_AdditionalInfo->p_KeysMatchTableOld, j * size * sizeof(uint8_t));
        p_KeysMatchTableNewTmp =
                PTR_MOVE(p_AdditionalInfo->p_KeysMatchTableNew, i * size * sizeof(uint8_t));
        MemCpy8(p_KeysMatchTableNewTmp, p_KeysMatchTableOldTmp,
                   size * sizeof(uint8_t));
    }

    p_AdTableNewTmp =
            PTR_MOVE(p_AdditionalInfo->p_AdTableNew, i * FM_PCD_CC_AD_ENTRY_SIZE);
    p_AdTableOldTmp =
            PTR_MOVE(p_AdditionalInfo->p_AdTableOld, j * FM_PCD_CC_AD_ENTRY_SIZE);
    MemCpy8(p_AdTableNewTmp, p_AdTableOldTmp, FM_PCD_CC_AD_ENTRY_SIZE);

    if (p_CcNode->keyAndNextEngineParams[keyIndex].nextEngineParams.nextEngine
            == e_FM_PCD_CC)
        p_AdditionalInfo->h_NodeForRmv =
                p_CcNode->keyAndNextEngineParams[keyIndex].nextEngineParams.params.ccParams.h_CcNode;

    if (p_CcNode->keyAndNextEngineParams[keyIndex].nextEngineParams.h_Manip)
        p_AdditionalInfo->h_ManipForRmv =
                p_CcNode->keyAndNextEngineParams[keyIndex].nextEngineParams.h_Manip;


    if (p_CcNode->keyAndNextEngineParams[keyIndex].p_StatsObj)
    {
        p_AdditionalInfo->p_StatsObjForRmv =
                p_CcNode->keyAndNextEngineParams[keyIndex].p_StatsObj;
    }
    return E_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_11__ {int error; int msgBody; int msgId; } ;
typedef TYPE_3__ t_FmIpcReply ;
struct TYPE_12__ {scalar_t__ boolInitialConfig; scalar_t__ extra; scalar_t__ val; scalar_t__ hardwarePortId; } ;
typedef TYPE_4__ t_FmIpcPortRsrcParams ;
typedef TYPE_3__ t_FmIpcMsg ;
struct TYPE_13__ {scalar_t__ guestId; TYPE_2__* p_FmStateStruct; scalar_t__ baseAddr; scalar_t__* h_IpcSessions; struct fman_bmi_regs* p_FmBmiRegs; } ;
typedef TYPE_6__ t_Fm ;
typedef int t_Error ;
struct fman_bmi_regs {int dummy; } ;
typedef int rsrcParams ;
typedef int reply ;
typedef int msg ;
struct TYPE_9__ {int majorRev; scalar_t__ minorRev; } ;
struct TYPE_10__ {scalar_t__ accumulatedNumOfOpenDmas; scalar_t__ extraOpenDmasPoolSize; scalar_t__ maxNumOfOpenDmas; TYPE_1__ revInfo; int fmId; } ;


 int ASSERT_COND (int) ;
 scalar_t__ DMA_THRESH_MAX_COMMQ ;
 int E_INVALID_VALUE ;
 int E_NOT_AVAILABLE ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 int FM_SET_NUM_OF_OPEN_DMAS ;
 int IN_RANGE (int,scalar_t__,int) ;
 int MAJOR ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_IpcSendMessage (scalar_t__,scalar_t__*,int,scalar_t__*,int*,int *,int *) ;
 scalar_t__ fman_get_num_extra_dmas (struct fman_bmi_regs*,scalar_t__) ;
 scalar_t__ fman_get_num_of_dmas (struct fman_bmi_regs*,scalar_t__) ;
 int fman_set_num_of_open_dmas (struct fman_bmi_regs*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int memcpy (int ,TYPE_4__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

t_Error FmSetNumOfOpenDmas(t_Handle h_Fm,
                           uint8_t hardwarePortId,
                           uint8_t *p_NumOfOpenDmas,
                           uint8_t *p_NumOfExtraOpenDmas,
                           bool initialConfig)

{
    t_Fm *p_Fm = (t_Fm *)h_Fm;
    t_Error err;
    struct fman_bmi_regs *bmi_rg = p_Fm->p_FmBmiRegs;
    uint8_t numOfOpenDmas = *p_NumOfOpenDmas, numOfExtraOpenDmas = *p_NumOfExtraOpenDmas;
    uint8_t totalNumDmas = 0, currentVal = 0, currentExtraVal = 0;

    ASSERT_COND(IN_RANGE(1, hardwarePortId, 63));

    if ((p_Fm->guestId != NCSW_MASTER_ID) &&
        !p_Fm->baseAddr &&
        p_Fm->h_IpcSessions[0])
    {
        t_FmIpcPortRsrcParams rsrcParams;
        t_FmIpcMsg msg;
        t_FmIpcReply reply;
        uint32_t replyLength;

        rsrcParams.hardwarePortId = hardwarePortId;
        rsrcParams.val = numOfOpenDmas;
        rsrcParams.extra = numOfExtraOpenDmas;
        rsrcParams.boolInitialConfig = (uint8_t)initialConfig;

        memset(&msg, 0, sizeof(msg));
        memset(&reply, 0, sizeof(reply));
        msg.msgId = FM_SET_NUM_OF_OPEN_DMAS;
        memcpy(msg.msgBody, &rsrcParams, sizeof(rsrcParams));
        replyLength = sizeof(uint32_t);
        if ((err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                     (uint8_t*)&msg,
                                     sizeof(msg.msgId) + sizeof(rsrcParams),
                                     (uint8_t*)&reply,
                                     &replyLength,
                                     ((void*)0),
                                     ((void*)0))) != E_OK)
            RETURN_ERROR(MINOR, err, NO_MSG);
        if (replyLength != sizeof(uint32_t))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
        return (t_Error)(reply.error);
    }




    else if ((p_Fm->guestId != NCSW_MASTER_ID) &&
             p_Fm->baseAddr &&
             (p_Fm->p_FmStateStruct->revInfo.majorRev >= 6))
    {


        if (!numOfOpenDmas)
        {


                *p_NumOfOpenDmas = fman_get_num_of_dmas(bmi_rg, hardwarePortId);
                *p_NumOfExtraOpenDmas = fman_get_num_extra_dmas(bmi_rg, hardwarePortId);
        }
        else

            fman_set_num_of_open_dmas(bmi_rg,
                                   hardwarePortId,
                                   numOfOpenDmas,
                                   numOfExtraOpenDmas,
                                   p_Fm->p_FmStateStruct->accumulatedNumOfOpenDmas + p_Fm->p_FmStateStruct->extraOpenDmasPoolSize);
    }
    else if (p_Fm->guestId != NCSW_MASTER_ID)
        RETURN_ERROR(MAJOR, E_NOT_SUPPORTED,
                     ("running in guest-mode without neither IPC nor mapped register!"));


    if (!initialConfig)
    {


        currentExtraVal = fman_get_num_extra_dmas(bmi_rg, hardwarePortId);
        currentVal = fman_get_num_of_dmas(bmi_rg, hardwarePortId);
    }
        if (numOfExtraOpenDmas > currentExtraVal)
             p_Fm->p_FmStateStruct->extraOpenDmasPoolSize =
                 (uint8_t)MAX(p_Fm->p_FmStateStruct->extraOpenDmasPoolSize, numOfExtraOpenDmas);
        if ((p_Fm->p_FmStateStruct->revInfo.majorRev >= 6) &&




            (p_Fm->p_FmStateStruct->accumulatedNumOfOpenDmas - currentVal + numOfOpenDmas > DMA_THRESH_MAX_COMMQ + 1))
            RETURN_ERROR(MAJOR, E_NOT_AVAILABLE,
                         ("Requested numOfOpenDmas for fm%d exceeds DMA Command queue (%d)",
                          p_Fm->p_FmStateStruct->fmId, DMA_THRESH_MAX_COMMQ+1));

        else
        {
            ASSERT_COND(p_Fm->p_FmStateStruct->accumulatedNumOfOpenDmas >= currentVal);

            p_Fm->p_FmStateStruct->accumulatedNumOfOpenDmas -= currentVal;
            p_Fm->p_FmStateStruct->accumulatedNumOfOpenDmas += numOfOpenDmas;





            fman_set_num_of_open_dmas(bmi_rg,
                               hardwarePortId,
                               numOfOpenDmas,
                               numOfExtraOpenDmas,
                               totalNumDmas);
        }

    return E_OK;
}

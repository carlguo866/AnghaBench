
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_22__ {size_t* msgBody; int error; TYPE_6__* replyBody; int msgId; } ;
typedef TYPE_4__ t_FmIpcReply ;
struct TYPE_19__ {int low; int high; } ;
struct TYPE_23__ {int extraSizeOfFifo; int sizeOfFifo; int numOfExtraOpenDmas; int numOfOpenDmas; int numOfExtraTasks; int numOfTasks; TYPE_1__ ipcPhysAddr; } ;
typedef TYPE_5__ t_FmIpcPortOutInitParams ;
struct TYPE_24__ {size_t hardwarePortId; int enumPortType; size_t boolIndependentMode; size_t deqPipelineDepth; scalar_t__ maxFrameLength; int liodnBase; int extraSizeOfFifo; int sizeOfFifo; int numOfExtraOpenDmas; int numOfOpenDmas; int numOfExtraTasks; int numOfTasks; int liodnOffset; } ;
typedef TYPE_6__ t_FmIpcPortInInitParams ;
typedef TYPE_4__ t_FmIpcMsg ;
struct TYPE_18__ {int low; int high; } ;
struct TYPE_25__ {size_t hardwarePortId; scalar_t__ portType; size_t deqPipelineDepth; scalar_t__ maxFrameLength; TYPE_17__ fmMuramPhysBaseAddr; scalar_t__ independentMode; int liodnOffset; int liodnBase; int numOfExtraOpenDmas; int numOfOpenDmas; int extraSizeOfFifo; int sizeOfFifo; int numOfExtraTasks; int numOfTasks; } ;
typedef TYPE_8__ t_FmInterModulePortInitParams ;
struct TYPE_26__ {scalar_t__ guestId; int h_Spinlock; TYPE_3__* p_FmStateStruct; void* hcPortInitialized; scalar_t__ independentMode; int * h_IpcSessions; int p_FmDmaRegs; int p_FmFpmRegs; int p_FmQmiRegs; int p_FmBmiRegs; } ;
typedef TYPE_9__ t_Fm ;
typedef scalar_t__ t_Error ;
struct fman_rg {int fpm_rg; int qmi_rg; int dma_rg; int bmi_rg; } ;
typedef int reply ;
typedef int portInParams ;
typedef int msg ;
struct TYPE_20__ {int majorRev; } ;
struct TYPE_21__ {scalar_t__* portsTypes; size_t accumulatedNumOfDeqTnums; scalar_t__* macMaxFrameLengths10G; scalar_t__* portMaxFrameLengths10G; scalar_t__* macMaxFrameLengths1G; scalar_t__* portMaxFrameLengths1G; TYPE_2__ revInfo; void* lowEndRestriction; } ;


 int ASSERT_COND (int) ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_NOT_AVAILABLE ;
 scalar_t__ E_OK ;
 int FM_GET_SET_PORT_PARAMS ;
 size_t FM_MAX_NUM_OF_10G_MACS ;
 size_t FM_MAX_NUM_OF_1G_MACS ;
 int FmGetPhysicalMuramBase (TYPE_9__*,TYPE_17__*) ;
 scalar_t__ FmSetNumOfOpenDmas (TYPE_9__*,size_t,int *,int *,void*) ;
 scalar_t__ FmSetNumOfTasks (TYPE_9__*,size_t,int *,int *,void*) ;
 scalar_t__ FmSetSizeOfFifo (TYPE_9__*,size_t,int *,int *,void*) ;
 int HW_PORT_ID_TO_SW_PORT_ID (size_t,size_t) ;
 int IN_RANGE (int,size_t,int) ;
 int MAJOR ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 char* NO_MSG ;
 int QMI_MAX_NUM_OF_TNUMS ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 void* TRUE ;
 scalar_t__ XX_IpcSendMessage (int ,size_t*,int,size_t*,int*,int *,int *) ;
 int XX_LockIntrSpinlock (int ) ;
 int XX_UnlockIntrSpinlock (int ,int) ;
 scalar_t__ e_FM_PORT_TYPE_OH_HOST_COMMAND ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;
 scalar_t__ e_FM_PORT_TYPE_TX ;
 scalar_t__ e_FM_PORT_TYPE_TX_10G ;
 size_t fman_get_qmi_deq_th (int ) ;
 size_t fman_get_qmi_enq_th (int ) ;
 int fman_qmi_disable_dispatch_limit (int ) ;
 int fman_set_liodn_per_port (struct fman_rg*,size_t,int ,int ) ;
 int fman_set_order_restoration_per_port (int ,size_t,scalar_t__,int) ;
 int fman_set_qmi_deq_th (int ,size_t) ;
 int fman_set_qmi_enq_th (int ,size_t) ;
 int memcpy (size_t*,TYPE_6__*,int) ;
 int memset (TYPE_4__*,int ,int) ;

t_Error FmGetSetPortParams(t_Handle h_Fm, t_FmInterModulePortInitParams *p_PortParams)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;
    t_Error err;
    uint32_t intFlags;
    uint8_t hardwarePortId = p_PortParams->hardwarePortId, macId;
    struct fman_rg fman_rg;

    fman_rg.bmi_rg = p_Fm->p_FmBmiRegs;
    fman_rg.qmi_rg = p_Fm->p_FmQmiRegs;
    fman_rg.fpm_rg = p_Fm->p_FmFpmRegs;
    fman_rg.dma_rg = p_Fm->p_FmDmaRegs;

    if (p_Fm->guestId != NCSW_MASTER_ID)
    {
        t_FmIpcPortInInitParams portInParams;
        t_FmIpcPortOutInitParams portOutParams;
        t_FmIpcMsg msg;
        t_FmIpcReply reply;
        uint32_t replyLength;

        portInParams.hardwarePortId = p_PortParams->hardwarePortId;
        portInParams.enumPortType = (uint32_t)p_PortParams->portType;
        portInParams.boolIndependentMode= (uint8_t)p_PortParams->independentMode;
        portInParams.liodnOffset = p_PortParams->liodnOffset;
        portInParams.numOfTasks = p_PortParams->numOfTasks;
        portInParams.numOfExtraTasks = p_PortParams->numOfExtraTasks;
        portInParams.numOfOpenDmas = p_PortParams->numOfOpenDmas;
        portInParams.numOfExtraOpenDmas = p_PortParams->numOfExtraOpenDmas;
        portInParams.sizeOfFifo = p_PortParams->sizeOfFifo;
        portInParams.extraSizeOfFifo = p_PortParams->extraSizeOfFifo;
        portInParams.deqPipelineDepth = p_PortParams->deqPipelineDepth;
        portInParams.maxFrameLength = p_PortParams->maxFrameLength;
        portInParams.liodnBase = p_PortParams->liodnBase;

        memset(&msg, 0, sizeof(msg));
        memset(&reply, 0, sizeof(reply));
        msg.msgId = FM_GET_SET_PORT_PARAMS;
        memcpy(msg.msgBody, &portInParams, sizeof(portInParams));
        replyLength = (sizeof(uint32_t) + sizeof(t_FmIpcPortOutInitParams));
        if ((err = XX_IpcSendMessage(p_Fm->h_IpcSessions[0],
                                     (uint8_t*)&msg,
                                     sizeof(msg.msgId) +sizeof(portInParams),
                                     (uint8_t*)&reply,
                                     &replyLength,
                                     ((void*)0),
                                     ((void*)0))) != E_OK)
            RETURN_ERROR(MINOR, err, NO_MSG);
        if (replyLength != (sizeof(uint32_t) + sizeof(t_FmIpcPortOutInitParams)))
            RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("IPC reply length mismatch"));
        memcpy((uint8_t*)&portOutParams, reply.replyBody, sizeof(t_FmIpcPortOutInitParams));

        p_PortParams->fmMuramPhysBaseAddr.high = portOutParams.ipcPhysAddr.high;
        p_PortParams->fmMuramPhysBaseAddr.low = portOutParams.ipcPhysAddr.low;
        p_PortParams->numOfTasks = portOutParams.numOfTasks;
        p_PortParams->numOfExtraTasks = portOutParams.numOfExtraTasks;
        p_PortParams->numOfOpenDmas = portOutParams.numOfOpenDmas;
        p_PortParams->numOfExtraOpenDmas = portOutParams.numOfExtraOpenDmas;
        p_PortParams->sizeOfFifo = portOutParams.sizeOfFifo;
        p_PortParams->extraSizeOfFifo = portOutParams.extraSizeOfFifo;

        return (t_Error)(reply.error);
    }

    ASSERT_COND(IN_RANGE(1, hardwarePortId, 63));

    intFlags = XX_LockIntrSpinlock(p_Fm->h_Spinlock);
    if (p_PortParams->independentMode)
    {

        p_Fm->independentMode = p_PortParams->independentMode;

        fman_qmi_disable_dispatch_limit(fman_rg.fpm_rg);
    }

    if (p_PortParams->portType == e_FM_PORT_TYPE_OH_HOST_COMMAND)
    {
        if (p_Fm->hcPortInitialized)
        {
            XX_UnlockIntrSpinlock(p_Fm->h_Spinlock, intFlags);
            RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Only one host command port is allowed."));
        }
        else
            p_Fm->hcPortInitialized = TRUE;
    }
    p_Fm->p_FmStateStruct->portsTypes[hardwarePortId] = p_PortParams->portType;

    err = FmSetNumOfTasks(p_Fm, hardwarePortId, &p_PortParams->numOfTasks, &p_PortParams->numOfExtraTasks, TRUE);
    if (err)
    {
        XX_UnlockIntrSpinlock(p_Fm->h_Spinlock, intFlags);
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }




    if ((p_PortParams->portType != e_FM_PORT_TYPE_RX) &&
       (p_PortParams->portType != e_FM_PORT_TYPE_RX_10G))

    {
        uint8_t enqTh;
        uint8_t deqTh;


        p_Fm->p_FmStateStruct->accumulatedNumOfDeqTnums += p_PortParams->deqPipelineDepth;
        enqTh = fman_get_qmi_enq_th(fman_rg.qmi_rg);

        if (enqTh >= (QMI_MAX_NUM_OF_TNUMS - p_Fm->p_FmStateStruct->accumulatedNumOfDeqTnums))
        {
            enqTh = (uint8_t)(QMI_MAX_NUM_OF_TNUMS - p_Fm->p_FmStateStruct->accumulatedNumOfDeqTnums - 1);
            fman_set_qmi_enq_th(fman_rg.qmi_rg, enqTh);
        }

        deqTh = fman_get_qmi_deq_th(fman_rg.qmi_rg);


        if ((deqTh <= p_Fm->p_FmStateStruct->accumulatedNumOfDeqTnums) && (deqTh < QMI_MAX_NUM_OF_TNUMS-1))
        {
            deqTh = (uint8_t)(p_Fm->p_FmStateStruct->accumulatedNumOfDeqTnums + 1);
            fman_set_qmi_deq_th(fman_rg.qmi_rg, deqTh);
        }
    }
    err = FmSetSizeOfFifo(p_Fm,
                          hardwarePortId,
                          &p_PortParams->sizeOfFifo,
                          &p_PortParams->extraSizeOfFifo,
                          TRUE);
    if (err)
    {
        XX_UnlockIntrSpinlock(p_Fm->h_Spinlock, intFlags);
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    err = FmSetNumOfOpenDmas(p_Fm,
                             hardwarePortId,
                             &p_PortParams->numOfOpenDmas,
                             &p_PortParams->numOfExtraOpenDmas,
                             TRUE);
    if (err)
    {
        XX_UnlockIntrSpinlock(p_Fm->h_Spinlock, intFlags);
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    fman_set_liodn_per_port(&fman_rg,
                            hardwarePortId,
                            p_PortParams->liodnBase,
                            p_PortParams->liodnOffset);

    if (p_Fm->p_FmStateStruct->revInfo.majorRev < 6)
        fman_set_order_restoration_per_port(fman_rg.fpm_rg,
                                            hardwarePortId,
                                            p_PortParams->independentMode,
                                            !!((p_PortParams->portType==e_FM_PORT_TYPE_RX) || (p_PortParams->portType==e_FM_PORT_TYPE_RX_10G)));

    HW_PORT_ID_TO_SW_PORT_ID(macId, hardwarePortId);
    if ((p_PortParams->portType == e_FM_PORT_TYPE_TX) ||
        (p_PortParams->portType == e_FM_PORT_TYPE_RX))
    {
        ASSERT_COND(macId < FM_MAX_NUM_OF_1G_MACS);
        if (p_PortParams->maxFrameLength >= p_Fm->p_FmStateStruct->macMaxFrameLengths1G[macId])
            p_Fm->p_FmStateStruct->portMaxFrameLengths1G[macId] = p_PortParams->maxFrameLength;
        else
            RETURN_ERROR(MINOR, E_INVALID_VALUE, ("Port maxFrameLength is smaller than MAC current MTU"));
    }

    FmGetPhysicalMuramBase(p_Fm, &p_PortParams->fmMuramPhysBaseAddr);
    XX_UnlockIntrSpinlock(p_Fm->h_Spinlock, intFlags);

    return E_OK;
}

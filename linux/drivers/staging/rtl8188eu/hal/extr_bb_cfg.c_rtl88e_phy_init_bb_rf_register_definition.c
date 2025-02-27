
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bb_reg_def {int rfLSSIReadBackPi; int rfLSSIReadBack; int rfTxAFE; int rfTxIQImbalance; int rfRxAFE; int rfRxIQImbalance; int rfAGCControl2; int rfAGCControl1; void* rfSwitchControl; int rfHSSIPara2; int rfHSSIPara1; void* rfTxGainStage; void* rfLSSI_Select; int rf3wireOffset; void* rfintfe; void* rfintfo; void* rfintfi; void* rfintfs; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {struct bb_reg_def* PHYRegDef; } ;


 size_t RF_PATH_A ;
 size_t RF_PATH_B ;
 int TransceiverA_HSPI_Readback ;
 int TransceiverB_HSPI_Readback ;
 void* rFPGA0_TxGainStage ;
 void* rFPGA0_XAB_RFInterfaceRB ;
 void* rFPGA0_XAB_RFInterfaceSW ;
 void* rFPGA0_XAB_RFParameter ;
 void* rFPGA0_XAB_SwitchControl ;
 int rFPGA0_XA_HSSIParameter1 ;
 int rFPGA0_XA_HSSIParameter2 ;
 int rFPGA0_XA_LSSIParameter ;
 int rFPGA0_XA_LSSIReadBack ;
 void* rFPGA0_XA_RFInterfaceOE ;
 int rFPGA0_XB_HSSIParameter1 ;
 int rFPGA0_XB_HSSIParameter2 ;
 int rFPGA0_XB_LSSIParameter ;
 int rFPGA0_XB_LSSIReadBack ;
 void* rFPGA0_XB_RFInterfaceOE ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XAAGCCore2 ;
 int rOFDM0_XARxAFE ;
 int rOFDM0_XARxIQImbalance ;
 int rOFDM0_XATxAFE ;
 int rOFDM0_XATxIQImbalance ;
 int rOFDM0_XBAGCCore1 ;
 int rOFDM0_XBAGCCore2 ;
 int rOFDM0_XBRxAFE ;
 int rOFDM0_XBRxIQImbalance ;
 int rOFDM0_XBTxAFE ;
 int rOFDM0_XBTxIQImbalance ;

__attribute__((used)) static void rtl88e_phy_init_bb_rf_register_definition(struct adapter *adapter)
{
 struct bb_reg_def *reg[4];

 reg[RF_PATH_A] = &adapter->HalData->PHYRegDef[RF_PATH_A];
 reg[RF_PATH_B] = &adapter->HalData->PHYRegDef[RF_PATH_B];

 reg[RF_PATH_A]->rfintfs = rFPGA0_XAB_RFInterfaceSW;
 reg[RF_PATH_B]->rfintfs = rFPGA0_XAB_RFInterfaceSW;

 reg[RF_PATH_A]->rfintfi = rFPGA0_XAB_RFInterfaceRB;
 reg[RF_PATH_B]->rfintfi = rFPGA0_XAB_RFInterfaceRB;

 reg[RF_PATH_A]->rfintfo = rFPGA0_XA_RFInterfaceOE;
 reg[RF_PATH_B]->rfintfo = rFPGA0_XB_RFInterfaceOE;

 reg[RF_PATH_A]->rfintfe = rFPGA0_XA_RFInterfaceOE;
 reg[RF_PATH_B]->rfintfe = rFPGA0_XB_RFInterfaceOE;

 reg[RF_PATH_A]->rf3wireOffset = rFPGA0_XA_LSSIParameter;
 reg[RF_PATH_B]->rf3wireOffset = rFPGA0_XB_LSSIParameter;

 reg[RF_PATH_A]->rfLSSI_Select = rFPGA0_XAB_RFParameter;
 reg[RF_PATH_B]->rfLSSI_Select = rFPGA0_XAB_RFParameter;

 reg[RF_PATH_A]->rfTxGainStage = rFPGA0_TxGainStage;
 reg[RF_PATH_B]->rfTxGainStage = rFPGA0_TxGainStage;

 reg[RF_PATH_A]->rfHSSIPara1 = rFPGA0_XA_HSSIParameter1;
 reg[RF_PATH_B]->rfHSSIPara1 = rFPGA0_XB_HSSIParameter1;

 reg[RF_PATH_A]->rfHSSIPara2 = rFPGA0_XA_HSSIParameter2;
 reg[RF_PATH_B]->rfHSSIPara2 = rFPGA0_XB_HSSIParameter2;

 reg[RF_PATH_A]->rfSwitchControl = rFPGA0_XAB_SwitchControl;
 reg[RF_PATH_B]->rfSwitchControl = rFPGA0_XAB_SwitchControl;

 reg[RF_PATH_A]->rfAGCControl1 = rOFDM0_XAAGCCore1;
 reg[RF_PATH_B]->rfAGCControl1 = rOFDM0_XBAGCCore1;

 reg[RF_PATH_A]->rfAGCControl2 = rOFDM0_XAAGCCore2;
 reg[RF_PATH_B]->rfAGCControl2 = rOFDM0_XBAGCCore2;

 reg[RF_PATH_A]->rfRxIQImbalance = rOFDM0_XARxIQImbalance;
 reg[RF_PATH_B]->rfRxIQImbalance = rOFDM0_XBRxIQImbalance;

 reg[RF_PATH_A]->rfRxAFE = rOFDM0_XARxAFE;
 reg[RF_PATH_B]->rfRxAFE = rOFDM0_XBRxAFE;

 reg[RF_PATH_A]->rfTxIQImbalance = rOFDM0_XATxIQImbalance;
 reg[RF_PATH_B]->rfTxIQImbalance = rOFDM0_XBTxIQImbalance;

 reg[RF_PATH_A]->rfTxAFE = rOFDM0_XATxAFE;
 reg[RF_PATH_B]->rfTxAFE = rOFDM0_XBTxAFE;

 reg[RF_PATH_A]->rfLSSIReadBack = rFPGA0_XA_LSSIReadBack;
 reg[RF_PATH_B]->rfLSSIReadBack = rFPGA0_XB_LSSIReadBack;

 reg[RF_PATH_A]->rfLSSIReadBackPi = TransceiverA_HSPI_Readback;
 reg[RF_PATH_B]->rfLSSIReadBackPi = TransceiverB_HSPI_Readback;
}

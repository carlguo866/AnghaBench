
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int CDUTY_CDC ;
 int CNTRL_CPL ;
 int CNTRL_DMD ;
 int CNTRL_EDG ;




 int CNTRL_IVO ;
 int CNTRL_LBM ;
 int CNTRL_MOD ;
 int CNTRL_R ;
 int CNTRL_RFE ;
 int CNTRL_RIC ;
 int CNTRL_RXE ;
 int CNTRL_TFE ;
 int CNTRL_TIC ;
 int CNTRL_TXE ;
 int CNTRL_WIN ;




 int CX23888_IR_CDUTY_REG ;
 int CX23888_IR_CNTRL_REG ;
 int CX23888_IR_FILTR_REG ;
 int CX23888_IR_IRQEN_REG ;
 int CX23888_IR_RXCLK_REG ;
 int CX23888_IR_STATS_REG ;
 int CX23888_IR_TXCLK_REG ;
 int FIFO_RXTX ;
 int FILTR_LPF ;
 int IRQEN_ROE ;
 int IRQEN_RSE ;
 int IRQEN_RTE ;
 int IRQEN_TSE ;
 int RXCLK_RCD ;
 int STATS_RBY ;
 int STATS_ROR ;
 int STATS_RSR ;
 int STATS_RTO ;
 int STATS_TBY ;
 int STATS_TSR ;
 int TXCLK_TCD ;
 char* clock_divider_to_carrier_freq (int) ;
 int clock_divider_to_freq (int,int) ;
 int cx23888_ir_read4 (struct cx23885_dev*,int ) ;
 int lpf_count_to_ns (int) ;
 int lpf_count_to_us (int) ;
 int pulse_width_count_to_ns (int ,int) ;
 int pulse_width_count_to_us (int ,int) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int cx23888_ir_log_status(struct v4l2_subdev *sd)
{
 struct cx23888_ir_state *state = to_state(sd);
 struct cx23885_dev *dev = state->dev;
 char *s;
 int i, j;

 u32 cntrl = cx23888_ir_read4(dev, CX23888_IR_CNTRL_REG);
 u32 txclk = cx23888_ir_read4(dev, CX23888_IR_TXCLK_REG) & TXCLK_TCD;
 u32 rxclk = cx23888_ir_read4(dev, CX23888_IR_RXCLK_REG) & RXCLK_RCD;
 u32 cduty = cx23888_ir_read4(dev, CX23888_IR_CDUTY_REG) & CDUTY_CDC;
 u32 stats = cx23888_ir_read4(dev, CX23888_IR_STATS_REG);
 u32 irqen = cx23888_ir_read4(dev, CX23888_IR_IRQEN_REG);
 u32 filtr = cx23888_ir_read4(dev, CX23888_IR_FILTR_REG) & FILTR_LPF;

 v4l2_info(sd, "IR Receiver:\n");
 v4l2_info(sd, "\tEnabled:                           %s\n",
    cntrl & CNTRL_RXE ? "yes" : "no");
 v4l2_info(sd, "\tDemodulation from a carrier:       %s\n",
    cntrl & CNTRL_DMD ? "enabled" : "disabled");
 v4l2_info(sd, "\tFIFO:                              %s\n",
    cntrl & CNTRL_RFE ? "enabled" : "disabled");
 switch (cntrl & CNTRL_EDG) {
 case 133:
  s = "disabled";
  break;
 case 134:
  s = "falling edge";
  break;
 case 132:
  s = "rising edge";
  break;
 case 135:
  s = "rising & falling edges";
  break;
 default:
  s = "??? edge";
  break;
 }
 v4l2_info(sd, "\tPulse timers' start/stop trigger:  %s\n", s);
 v4l2_info(sd, "\tFIFO data on pulse timer overflow: %s\n",
    cntrl & CNTRL_R ? "not loaded" : "overflow marker");
 v4l2_info(sd, "\tFIFO interrupt watermark:          %s\n",
    cntrl & CNTRL_RIC ? "not empty" : "half full or greater");
 v4l2_info(sd, "\tLoopback mode:                     %s\n",
    cntrl & CNTRL_LBM ? "loopback active" : "normal receive");
 if (cntrl & CNTRL_DMD) {
  v4l2_info(sd, "\tExpected carrier (16 clocks):      %u Hz\n",
     clock_divider_to_carrier_freq(rxclk));
  switch (cntrl & CNTRL_WIN) {
  case 131:
   i = 3;
   j = 3;
   break;
  case 129:
   i = 4;
   j = 3;
   break;
  case 130:
   i = 3;
   j = 4;
   break;
  case 128:
   i = 4;
   j = 4;
   break;
  default:
   i = 0;
   j = 0;
   break;
  }
  v4l2_info(sd, "\tNext carrier edge window:	    16 clocks -%1d/+%1d, %u to %u Hz\n",
     i, j,
     clock_divider_to_freq(rxclk, 16 + j),
     clock_divider_to_freq(rxclk, 16 - i));
 }
 v4l2_info(sd, "\tMax measurable pulse width:        %u us, %llu ns\n",
    pulse_width_count_to_us(FIFO_RXTX, rxclk),
    pulse_width_count_to_ns(FIFO_RXTX, rxclk));
 v4l2_info(sd, "\tLow pass filter:                   %s\n",
    filtr ? "enabled" : "disabled");
 if (filtr)
  v4l2_info(sd, "\tMin acceptable pulse width (LPF):  %u us, %u ns\n",
     lpf_count_to_us(filtr),
     lpf_count_to_ns(filtr));
 v4l2_info(sd, "\tPulse width timer timed-out:       %s\n",
    stats & STATS_RTO ? "yes" : "no");
 v4l2_info(sd, "\tPulse width timer time-out intr:   %s\n",
    irqen & IRQEN_RTE ? "enabled" : "disabled");
 v4l2_info(sd, "\tFIFO overrun:                      %s\n",
    stats & STATS_ROR ? "yes" : "no");
 v4l2_info(sd, "\tFIFO overrun interrupt:            %s\n",
    irqen & IRQEN_ROE ? "enabled" : "disabled");
 v4l2_info(sd, "\tBusy:                              %s\n",
    stats & STATS_RBY ? "yes" : "no");
 v4l2_info(sd, "\tFIFO service requested:            %s\n",
    stats & STATS_RSR ? "yes" : "no");
 v4l2_info(sd, "\tFIFO service request interrupt:    %s\n",
    irqen & IRQEN_RSE ? "enabled" : "disabled");

 v4l2_info(sd, "IR Transmitter:\n");
 v4l2_info(sd, "\tEnabled:                           %s\n",
    cntrl & CNTRL_TXE ? "yes" : "no");
 v4l2_info(sd, "\tModulation onto a carrier:         %s\n",
    cntrl & CNTRL_MOD ? "enabled" : "disabled");
 v4l2_info(sd, "\tFIFO:                              %s\n",
    cntrl & CNTRL_TFE ? "enabled" : "disabled");
 v4l2_info(sd, "\tFIFO interrupt watermark:          %s\n",
    cntrl & CNTRL_TIC ? "not empty" : "half full or less");
 v4l2_info(sd, "\tOutput pin level inversion         %s\n",
    cntrl & CNTRL_IVO ? "yes" : "no");
 v4l2_info(sd, "\tCarrier polarity:                  %s\n",
    cntrl & CNTRL_CPL ? "space:burst mark:noburst"
        : "space:noburst mark:burst");
 if (cntrl & CNTRL_MOD) {
  v4l2_info(sd, "\tCarrier (16 clocks):               %u Hz\n",
     clock_divider_to_carrier_freq(txclk));
  v4l2_info(sd, "\tCarrier duty cycle:                %2u/16\n",
     cduty + 1);
 }
 v4l2_info(sd, "\tMax pulse width:                   %u us, %llu ns\n",
    pulse_width_count_to_us(FIFO_RXTX, txclk),
    pulse_width_count_to_ns(FIFO_RXTX, txclk));
 v4l2_info(sd, "\tBusy:                              %s\n",
    stats & STATS_TBY ? "yes" : "no");
 v4l2_info(sd, "\tFIFO service requested:            %s\n",
    stats & STATS_TSR ? "yes" : "no");
 v4l2_info(sd, "\tFIFO service request interrupt:    %s\n",
    irqen & IRQEN_TSE ? "enabled" : "disabled");

 return 0;
}

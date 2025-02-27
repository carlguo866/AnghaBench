
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_sci_handle {int dummy; } ;


 int MSG_CLOCK_SW_STATE_REQ ;
 int MSG_FLAG_CLOCK_ALLOW_FREQ_CHANGE ;
 int MSG_FLAG_CLOCK_ALLOW_SSC ;
 int MSG_FLAG_CLOCK_INPUT_TERM ;
 int ti_sci_set_clock_state (struct ti_sci_handle const*,int ,int ,int ,int ) ;

__attribute__((used)) static int ti_sci_cmd_get_clock(const struct ti_sci_handle *handle, u32 dev_id,
    u32 clk_id, bool needs_ssc,
    bool can_change_freq, bool enable_input_term)
{
 u32 flags = 0;

 flags |= needs_ssc ? MSG_FLAG_CLOCK_ALLOW_SSC : 0;
 flags |= can_change_freq ? MSG_FLAG_CLOCK_ALLOW_FREQ_CHANGE : 0;
 flags |= enable_input_term ? MSG_FLAG_CLOCK_INPUT_TERM : 0;

 return ti_sci_set_clock_state(handle, dev_id, clk_id, flags,
          MSG_CLOCK_SW_STATE_REQ);
}

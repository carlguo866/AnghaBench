
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct TYPE_4__ {int waveform_phase_value; int attenuation; int sample_offset; int backwards; int address_pointer; } ;
struct TYPE_3__ {int mdl; int lpctl; int lea; int lsa; scalar_t__ sa; int pcm8b; int mdysl; int mdxsl; } ;
struct Slot {TYPE_2__ state; TYPE_1__ regs; } ;
struct Scsp {int* sound_stack; } ;
typedef int s32 ;
typedef int s16 ;


 size_t get_slot (struct Slot*,int ) ;

void op2(struct Slot * slot, struct Scsp * s)
{
   s32 md_out = 0;
   s32 sample_delta = slot->state.waveform_phase_value >> 18;

   if (slot->state.attenuation > 0x3bf)
      return;

   if (slot->regs.mdl)
   {

      u32 x_sel = get_slot(slot, slot->regs.mdxsl);
      u32 y_sel = get_slot(slot, slot->regs.mdysl);
      s16 xd = s->sound_stack[x_sel];
      s16 yd = s->sound_stack[y_sel];

      s32 zd = (xd + yd) / 2;


      u16 shift = 0xf - (slot->regs.mdl);
      zd >>= shift;

      md_out = zd;
   }



   if (slot->regs.lpctl == 0)
   {
      slot->state.sample_offset += sample_delta;

      if (slot->state.sample_offset >= slot->regs.lea)
         slot->state.attenuation = 0x3ff;
   }
   else if (slot->regs.lpctl == 1)
   {
      slot->state.sample_offset += sample_delta;

      if (slot->state.sample_offset >= slot->regs.lea)
         slot->state.sample_offset = slot->regs.lsa;
   }
   else if (slot->regs.lpctl == 2)
   {
      if (!slot->state.backwards)
         slot->state.sample_offset += sample_delta;
      else
         slot->state.sample_offset -= sample_delta;

      if (!slot->state.backwards)
      {
         if (slot->state.sample_offset >= slot->regs.lea)
         {
            slot->state.sample_offset = slot->regs.lea;
            slot->state.backwards = 1;
         }
      }
      else
      {

         if (slot->state.sample_offset <= slot->regs.lsa)
            slot->state.sample_offset = slot->regs.lea;
      }
   }
   else if (slot->regs.lpctl == 3)
   {
      if(!slot->state.backwards)
         slot->state.sample_offset += sample_delta;
      else
         slot->state.sample_offset -= sample_delta;

      if (!slot->state.backwards)
      {
         if (slot->state.sample_offset >= slot->regs.lea)
         {
            slot->state.sample_offset = slot->regs.lea;
            slot->state.backwards = 1;
         }
      }
      else
      {
         if (slot->state.sample_offset <= slot->regs.lsa)
         {
            slot->state.sample_offset = slot->regs.lsa;
            slot->state.backwards = 0;
         }
      }
   }

   if (!slot->regs.pcm8b)
      slot->state.address_pointer = (s32)slot->regs.sa + (slot->state.sample_offset + md_out) * 2;
   else
      slot->state.address_pointer = (s32)slot->regs.sa + (slot->state.sample_offset + md_out);
}

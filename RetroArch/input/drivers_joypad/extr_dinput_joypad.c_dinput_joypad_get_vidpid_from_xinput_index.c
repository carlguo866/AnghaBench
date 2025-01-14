
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ vid; scalar_t__ pid; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int RARCH_LOG (char*,scalar_t__,int) ;
 TYPE_1__* g_pads ;
 scalar_t__* g_xinput_pad_indexes ;

bool dinput_joypad_get_vidpid_from_xinput_index(int32_t index, int32_t *vid, int32_t *pid, int32_t *dinput_index)
{
   int i;

   for (i = 0; i < ARRAY_SIZE(g_xinput_pad_indexes); i++)
   {
      if (index == g_xinput_pad_indexes[i])
      {
         RARCH_LOG("[DINPUT]: Found XInput pad at index %d (DINPUT index %d)\n", index, i);

         if (vid)
            *vid = g_pads[i].vid;

         if (pid)
            *pid = g_pads[i].pid;

         if (dinput_index)
            *dinput_index = i;

         return 1;
      }
   }

   return 0;
}

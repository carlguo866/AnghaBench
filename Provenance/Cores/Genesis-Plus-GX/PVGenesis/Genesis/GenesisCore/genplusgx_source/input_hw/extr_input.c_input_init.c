
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int special; } ;
struct TYPE_7__ {TYPE_1__* input; } ;
struct TYPE_6__ {int* system; void** dev; scalar_t__* pad; } ;
struct TYPE_5__ {void* padtype; } ;


 void* DEVICE_ACTIVATOR ;
 void* DEVICE_LIGHTGUN ;
 void* DEVICE_MOUSE ;
 void* DEVICE_PAD2B ;
 void* DEVICE_PADDLE ;
 void* DEVICE_PICO ;
 void* DEVICE_SPORTSPAD ;
 void* DEVICE_TEREBI ;
 void* DEVICE_XE_A1P ;
 int HW_J_CART ;
 int HW_TEREBI_OEKAKI ;
 int MAX_DEVICES ;
 int MAX_INPUTS ;
 void* NO_DEVICE ;
 scalar_t__ SYSTEM_PICO ;




 TYPE_4__ cart ;
 TYPE_3__ config ;
 TYPE_2__ input ;
 scalar_t__ system_hw ;
 int teamplayer_init (int) ;

void input_init(void)
{
  int i;
  int player = 0;

  for (i=0; i<MAX_DEVICES; i++)
  {
    input.dev[i] = NO_DEVICE;
    input.pad[i] = 0;
  }


  if (system_hw == SYSTEM_PICO)
  {
    input.dev[0] = DEVICE_PICO;
    return;
  }


  if (cart.special & HW_TEREBI_OEKAKI)
  {
    input.dev[0] = DEVICE_TEREBI;
    return;
  }

  switch (input.system[0])
  {
    case 133:
    {
      input.dev[0] = DEVICE_PAD2B;
      player++;
      break;
    }

    case 136:
    {
      input.dev[0] = config.input[player].padtype;
      player++;
      break;
    }

    case 134:
    {
      input.dev[0] = DEVICE_MOUSE;
      player++;
      break;
    }

    case 139:
    {
      input.dev[0] = DEVICE_ACTIVATOR;
      player++;
      break;
    }

    case 128:
    {
      input.dev[0] = DEVICE_XE_A1P;
      player++;
      break;
    }

    case 129:
    {
      for (i=0; i< 4; i++)
      {
        if (player < MAX_INPUTS)
        {
          input.dev[i] = config.input[player].padtype;
          player++;
        }
      }
      break;
    }

    case 130:
    {
      for (i=0; i<4; i++)
      {
        if (player < MAX_INPUTS)
        {
          input.dev[i] = config.input[player].padtype;
          player++;
        }
      }
      teamplayer_init(0);
      break;
    }

    case 137:
    {
      input.dev[0] = DEVICE_LIGHTGUN;
      player++;
      break;
    }

    case 132:
    {
      input.dev[0] = DEVICE_PADDLE;
      player++;
      break;
    }

    case 131:
    {
      input.dev[0] = DEVICE_SPORTSPAD;
      player++;
      break;
    }
  }

  if (player == MAX_INPUTS)
  {
    return;
  }

  switch (input.system[1])
  {
    case 133:
    {
      input.dev[4] = DEVICE_PAD2B;
      player++;
      break;
    }

    case 136:
    {
      input.dev[4] = config.input[player].padtype;
      player++;
      break;
    }

    case 134:
    {
      input.dev[4] = DEVICE_MOUSE;
      player++;
      break;
    }

    case 139:
    {
      input.dev[4] = DEVICE_ACTIVATOR;
      player++;
      break;
    }

    case 128:
    {
      input.dev[4] = DEVICE_XE_A1P;
      player++;
      break;
    }

    case 135:
    {
      input.dev[4] = DEVICE_LIGHTGUN;
      player++;
      break;
    }

    case 138:
    {
      for (i=4; i<6; i++)
      {
        if (player < MAX_INPUTS)
        {
          input.dev[i] = DEVICE_LIGHTGUN;
          player++;
        }
      }
      break;
    }

    case 130:
    {
      for (i=4; i<8; i++)
      {
        if (player < MAX_INPUTS)
        {
          input.dev[i] = config.input[player].padtype;
          player++;
        }
      }
      teamplayer_init(1);
      break;
    }

    case 137:
    {
      input.dev[4] = DEVICE_LIGHTGUN;
      player++;
      break;
    }

    case 132:
    {
      input.dev[4] = DEVICE_PADDLE;
      player++;
      break;
    }

    case 131:
    {
      input.dev[4] = DEVICE_SPORTSPAD;
      player++;
      break;
    }
  }


  if (cart.special & HW_J_CART)
  {

    for (i=5; i<7; i++)
    {
      if (player < MAX_INPUTS)
      {
        input.dev[i] = config.input[player].padtype;
        player ++;
      }
    }
  }
}

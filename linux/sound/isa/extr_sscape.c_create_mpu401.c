
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundscape {int dummy; } ;
struct snd_rawmidi {struct snd_mpu401* private_data; } ;
struct snd_mpu401 {struct soundscape* private_data; void* open_output; void* open_input; } ;
struct snd_card {int dummy; } ;


 int MPU401_HW_MPU401 ;
 int MPU401_INFO_INTEGRATED ;
 struct soundscape* get_card_soundscape (struct snd_card*) ;
 int initialise_mpu401 (struct snd_mpu401*) ;
 void* mpu401_open ;
 int snd_mpu401_uart_new (struct snd_card*,int,int ,unsigned long,int ,int,struct snd_rawmidi**) ;

__attribute__((used)) static int create_mpu401(struct snd_card *card, int devnum,
    unsigned long port, int irq)
{
 struct soundscape *sscape = get_card_soundscape(card);
 struct snd_rawmidi *rawmidi;
 int err;

 err = snd_mpu401_uart_new(card, devnum, MPU401_HW_MPU401, port,
      MPU401_INFO_INTEGRATED, irq, &rawmidi);
 if (err == 0) {
  struct snd_mpu401 *mpu = rawmidi->private_data;
  mpu->open_input = mpu401_open;
  mpu->open_output = mpu401_open;
  mpu->private_data = sscape;

  initialise_mpu401(mpu);
 }

 return err;
}

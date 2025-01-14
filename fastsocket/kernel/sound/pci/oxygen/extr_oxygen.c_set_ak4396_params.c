
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {int** ak4396_regs; unsigned int dacs; } ;


 size_t AK4396_CONTROL_1 ;
 size_t AK4396_CONTROL_2 ;
 int AK4396_DFS_DOUBLE ;
 int AK4396_DFS_MASK ;
 int AK4396_DFS_NORMAL ;
 int AK4396_DFS_QUAD ;
 int AK4396_DIF_24_MSB ;
 int AK4396_RSTN ;
 int ak4396_write (struct oxygen*,unsigned int,size_t,int) ;
 int msleep (int) ;
 int params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static void set_ak4396_params(struct oxygen *chip,
         struct snd_pcm_hw_params *params)
{
 struct generic_data *data = chip->model_data;
 unsigned int i;
 u8 value;

 value = data->ak4396_regs[0][AK4396_CONTROL_2] & ~AK4396_DFS_MASK;
 if (params_rate(params) <= 54000)
  value |= AK4396_DFS_NORMAL;
 else if (params_rate(params) <= 108000)
  value |= AK4396_DFS_DOUBLE;
 else
  value |= AK4396_DFS_QUAD;

 msleep(1);

 if (value != data->ak4396_regs[0][AK4396_CONTROL_2]) {
  for (i = 0; i < data->dacs; ++i) {
   ak4396_write(chip, i, AK4396_CONTROL_1,
         AK4396_DIF_24_MSB);
   ak4396_write(chip, i, AK4396_CONTROL_2, value);
   ak4396_write(chip, i, AK4396_CONTROL_1,
         AK4396_DIF_24_MSB | AK4396_RSTN);
  }
 }
}

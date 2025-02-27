
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_info {unsigned int id; unsigned int id_codec; } ;
struct firmware {unsigned int size; } ;
struct allegro_dev {int dummy; } ;


 int ARRAY_SIZE (struct fw_info const*) ;
 struct fw_info const* supported_firmware ;

__attribute__((used)) static const struct fw_info *
allegro_get_firmware_info(struct allegro_dev *dev,
     const struct firmware *fw,
     const struct firmware *fw_codec)
{
 int i;
 unsigned int id = fw->size;
 unsigned int id_codec = fw_codec->size;

 for (i = 0; i < ARRAY_SIZE(supported_firmware); i++)
  if (supported_firmware[i].id == id &&
      supported_firmware[i].id_codec == id_codec)
   return &supported_firmware[i];

 return ((void*)0);
}

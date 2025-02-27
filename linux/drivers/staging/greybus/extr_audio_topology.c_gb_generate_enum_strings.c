
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbaudio_module_info {int dev; } ;
struct gb_audio_enumerated {char* names; int items; } ;
typedef char __u8 ;


 int GFP_KERNEL ;
 char** devm_kcalloc (int ,unsigned int,int,int ) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static const char **gb_generate_enum_strings(struct gbaudio_module_info *gb,
          struct gb_audio_enumerated *gbenum)
{
 const char **strings;
 int i;
 unsigned int items;
 __u8 *data;

 items = le32_to_cpu(gbenum->items);
 strings = devm_kcalloc(gb->dev, items, sizeof(char *), GFP_KERNEL);
 data = gbenum->names;

 for (i = 0; i < items; i++) {
  strings[i] = (const char *)data;
  while (*data != '\0')
   data++;
  data++;
 }

 return strings;
}

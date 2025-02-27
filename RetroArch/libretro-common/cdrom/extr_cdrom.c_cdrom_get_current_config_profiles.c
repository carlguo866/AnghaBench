
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretro_vfs_implementation_file ;
typedef int cdb ;
typedef int buf ;


 int DIRECTION_IN ;
 int cdrom_send_command (int *,int ,unsigned char*,int,unsigned char*,int,int ) ;
 char* get_profile (unsigned short) ;
 int printf (char*,...) ;

void cdrom_get_current_config_profiles(libretro_vfs_implementation_file *stream)
{
   unsigned char cdb[] = {0x46, 0x2, 0, 0x0, 0, 0, 0, 0xFF, 0xFA, 0};
   unsigned char buf[0xFFFA] = {0};
   int rv = cdrom_send_command(stream, DIRECTION_IN, buf, sizeof(buf), cdb, sizeof(cdb), 0);
   int i;

   printf("[CDROM] get current config profiles status code %d\n", rv);

   if (rv)
      return;

   printf("[CDROM] Feature Header: ");

   for (i = 0; i < 8; i++)
   {
      printf("%02X ", buf[i]);
   }

   printf("\n");

   printf("[CDROM] Profile List Descriptor: ");

   for (i = 0; i < 4; i++)
   {
      printf("%02X ", buf[8 + i]);
   }

   printf("\n");

   printf("[CDROM] Number of profiles: %u\n", buf[8 + 3] / 4);

   for (i = 0; i < buf[8 + 3] / 4; i++)
   {
      unsigned short profile = (buf[8 + (4 * (i + 1))] << 8) | buf[8 + (4 * (i + 1)) + 1];

      printf("[CDROM] Profile Number: %04X (%s) ", profile, get_profile(profile));

      if (buf[8 + (4 * (i + 1)) + 2] & 1)
         printf("(current)\n");
      else
         printf("\n");
   }
}

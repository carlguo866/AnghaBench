
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct adb_mouse_softc {int dummy; } ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct adb_mouse_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 size_t adb_read_register (int ,int,int*) ;
 int adb_tapping_sysctl ;
 int adb_write_register (int ,int,int,int*) ;
 struct adb_mouse_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
adb_init_trackpad(device_t dev)
{
 struct adb_mouse_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;

 size_t r1_len;
 u_char r1[8];
 u_char r2[8];

 sc = device_get_softc(dev);

 r1_len = adb_read_register(dev, 1, r1);


 if (r1_len != 8)
  return;

 if((r1[6] != 0x0d))
 {
  r1[6] = 0x0d;

  adb_write_register(dev, 1, 8, r1);

  r1_len = adb_read_register(dev, 1, r1);

  if (r1[6] != 0x0d)
  {
   device_printf(dev, "ADB Mouse = 0x%x "
          "(non-Extended Mode)\n", r1[6]);
   return;
  } else {
   device_printf(dev, "ADB Mouse = 0x%x "
          "(Extended Mode)\n", r1[6]);



   r2[0] = 0x19;
   r2[1] = 0x94;
   r2[2] = 0x19;
   r2[3] = 0xff;
   r2[4] = 0xb2;
   r2[5] = 0x8a;
   r2[6] = 0x1b;

   r2[7] = 0x57;

   adb_write_register(dev, 2, 8, r2);

  }
 }




 ctx = device_get_sysctl_ctx(dev);
 tree = device_get_sysctl_tree(dev);
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO, "tapping",
   CTLTYPE_INT | CTLFLAG_RW, sc, 0, adb_tapping_sysctl,
   "I", "Tapping the pad causes button events");
 return;
}

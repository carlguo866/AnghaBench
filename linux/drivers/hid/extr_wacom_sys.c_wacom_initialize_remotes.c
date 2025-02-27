
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct wacom_remote_data {int dummy; } ;
struct wacom_remote {TYPE_5__* remotes; int remote_dir; int remote_fifo; int remote_lock; } ;
struct TYPE_12__ {TYPE_3__* groups; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_1__ features; } ;
struct wacom {TYPE_6__* hdev; TYPE_4__ led; struct wacom_remote* remote; TYPE_2__ wacom_wac; } ;
struct TYPE_15__ {int kobj; } ;
struct TYPE_14__ {TYPE_7__ dev; } ;
struct TYPE_13__ {scalar_t__ serial; int group; } ;
struct TYPE_11__ {int select; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ REMOTE ;
 int WACOM_MAX_REMOTES ;
 int WACOM_STATUS_UNKNOWN ;
 int devm_add_action_or_reset (TYPE_7__*,int ,struct wacom*) ;
 struct wacom_remote* devm_kzalloc (TYPE_7__*,int,int ) ;
 int hid_err (TYPE_6__*,char*,...) ;
 int kfifo_alloc (int *,int,int ) ;
 int kobject_create_and_add (char*,int *) ;
 int remote0_serial_group ;
 int remote1_serial_group ;
 int remote2_serial_group ;
 int remote3_serial_group ;
 int remote4_serial_group ;
 int remote_unpair_attrs ;
 int spin_lock_init (int *) ;
 int sysfs_create_files (int ,int ) ;
 int wacom_remotes_destroy ;

__attribute__((used)) static int wacom_initialize_remotes(struct wacom *wacom)
{
 int error = 0;
 struct wacom_remote *remote;
 int i;

 if (wacom->wacom_wac.features.type != REMOTE)
  return 0;

 remote = devm_kzalloc(&wacom->hdev->dev, sizeof(*wacom->remote),
         GFP_KERNEL);
 if (!remote)
  return -ENOMEM;

 wacom->remote = remote;

 spin_lock_init(&remote->remote_lock);

 error = kfifo_alloc(&remote->remote_fifo,
   5 * sizeof(struct wacom_remote_data),
   GFP_KERNEL);
 if (error) {
  hid_err(wacom->hdev, "failed allocating remote_fifo\n");
  return -ENOMEM;
 }

 remote->remotes[0].group = remote0_serial_group;
 remote->remotes[1].group = remote1_serial_group;
 remote->remotes[2].group = remote2_serial_group;
 remote->remotes[3].group = remote3_serial_group;
 remote->remotes[4].group = remote4_serial_group;

 remote->remote_dir = kobject_create_and_add("wacom_remote",
          &wacom->hdev->dev.kobj);
 if (!remote->remote_dir)
  return -ENOMEM;

 error = sysfs_create_files(remote->remote_dir, remote_unpair_attrs);

 if (error) {
  hid_err(wacom->hdev,
   "cannot create sysfs group err: %d\n", error);
  return error;
 }

 for (i = 0; i < WACOM_MAX_REMOTES; i++) {
  wacom->led.groups[i].select = WACOM_STATUS_UNKNOWN;
  remote->remotes[i].serial = 0;
 }

 error = devm_add_action_or_reset(&wacom->hdev->dev,
      wacom_remotes_destroy, wacom);
 if (error)
  return error;

 return 0;
}

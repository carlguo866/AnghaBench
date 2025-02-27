
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union niu_parent_id {int dummy; } niu_parent_id ;
typedef scalar_t__ u8 ;
struct TYPE_7__ {struct niu_parent* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct niu_parent {scalar_t__ plat_type; int rxdma_clock_divider; int* flow_key; int * ldg_map; int * tcam_key; int tcam_num_entries; int lock; int list; int refcnt; int id; struct platform_device* plat_dev; scalar_t__ index; } ;
struct niu {int dummy; } ;
struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_6__ {TYPE_1__ attr; } ;


 int CLASS_CODE_SCTP_IPV6 ;
 int CLASS_CODE_USER_PROG1 ;
 int FLOW_KEY_IPDA ;
 int FLOW_KEY_IPSA ;
 int FLOW_KEY_L4_0_SHIFT ;
 int FLOW_KEY_L4_1_SHIFT ;
 int FLOW_KEY_L4_BYTE12 ;
 int FLOW_KEY_PROTO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int LDG_INVALID ;
 int LDN_MAX ;
 int NIU_NONPCI_TCAM_ENTRIES ;
 int NIU_PCI_TCAM_ENTRIES ;
 scalar_t__ PLAT_TYPE_NIU ;
 int TCAM_KEY_TSEL ;
 int atomic_set (int *,int ) ;
 int device_create_file (TYPE_3__*,TYPE_2__*) ;
 struct niu_parent* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int *,union niu_parent_id*,int) ;
 TYPE_2__* niu_parent_attributes ;
 int niu_parent_index ;
 int niu_parent_list ;
 struct platform_device* platform_device_register_simple (char*,int ,int *,int ) ;
 int platform_device_unregister (struct platform_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct niu_parent *niu_new_parent(struct niu *np,
      union niu_parent_id *id, u8 ptype)
{
 struct platform_device *plat_dev;
 struct niu_parent *p;
 int i;

 plat_dev = platform_device_register_simple("niu-board", niu_parent_index,
         ((void*)0), 0);
 if (IS_ERR(plat_dev))
  return ((void*)0);

 for (i = 0; niu_parent_attributes[i].attr.name; i++) {
  int err = device_create_file(&plat_dev->dev,
          &niu_parent_attributes[i]);
  if (err)
   goto fail_unregister;
 }

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  goto fail_unregister;

 p->index = niu_parent_index++;

 plat_dev->dev.platform_data = p;
 p->plat_dev = plat_dev;

 memcpy(&p->id, id, sizeof(*id));
 p->plat_type = ptype;
 INIT_LIST_HEAD(&p->list);
 atomic_set(&p->refcnt, 0);
 list_add(&p->list, &niu_parent_list);
 spin_lock_init(&p->lock);

 p->rxdma_clock_divider = 7500;

 p->tcam_num_entries = NIU_PCI_TCAM_ENTRIES;
 if (p->plat_type == PLAT_TYPE_NIU)
  p->tcam_num_entries = NIU_NONPCI_TCAM_ENTRIES;

 for (i = CLASS_CODE_USER_PROG1; i <= CLASS_CODE_SCTP_IPV6; i++) {
  int index = i - CLASS_CODE_USER_PROG1;

  p->tcam_key[index] = TCAM_KEY_TSEL;
  p->flow_key[index] = (FLOW_KEY_IPSA |
          FLOW_KEY_IPDA |
          FLOW_KEY_PROTO |
          (FLOW_KEY_L4_BYTE12 <<
           FLOW_KEY_L4_0_SHIFT) |
          (FLOW_KEY_L4_BYTE12 <<
           FLOW_KEY_L4_1_SHIFT));
 }

 for (i = 0; i < LDN_MAX + 1; i++)
  p->ldg_map[i] = LDG_INVALID;

 return p;

fail_unregister:
 platform_device_unregister(plat_dev);
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct np_info {unsigned int stid; struct np_info* next; struct cxgbit_np* cnp; } ;
struct cxgbit_np {int dummy; } ;
struct cxgbit_device {int np_lock; struct np_info** np_hash_tab; } ;


 int GFP_KERNEL ;
 int cxgbit_np_hashfn (struct cxgbit_np*) ;
 struct np_info* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct np_info *
cxgbit_np_hash_add(struct cxgbit_device *cdev, struct cxgbit_np *cnp,
     unsigned int stid)
{
 struct np_info *p = kzalloc(sizeof(*p), GFP_KERNEL);

 if (p) {
  int bucket = cxgbit_np_hashfn(cnp);

  p->cnp = cnp;
  p->stid = stid;
  spin_lock(&cdev->np_lock);
  p->next = cdev->np_hash_tab[bucket];
  cdev->np_hash_tab[bucket] = p;
  spin_unlock(&cdev->np_lock);
 }

 return p;
}

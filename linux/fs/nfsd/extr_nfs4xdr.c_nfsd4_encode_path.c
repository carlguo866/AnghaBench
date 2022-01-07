
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {unsigned int len; int name; } ;
struct dentry {int d_lock; TYPE_2__ d_name; } ;
typedef scalar_t__ __be32 ;
struct TYPE_3__ {scalar_t__ mnt_root; } ;


 int GFP_KERNEL ;
 int cpu_to_be32 (unsigned int) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dprintk (char*,...) ;
 int dput (struct dentry*) ;
 scalar_t__ follow_up (struct path*) ;
 int kfree (struct dentry**) ;
 struct dentry** krealloc (struct dentry**,int,int ) ;
 scalar_t__ nfserr_jukebox ;
 scalar_t__ nfserr_resource ;
 scalar_t__ path_equal (struct path*,struct path const*) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__* xdr_encode_opaque (scalar_t__*,int ,unsigned int) ;
 scalar_t__* xdr_reserve_space (struct xdr_stream*,unsigned int) ;

__attribute__((used)) static __be32 nfsd4_encode_path(struct xdr_stream *xdr,
    const struct path *root,
    const struct path *path)
{
 struct path cur = *path;
 __be32 *p;
 struct dentry **components = ((void*)0);
 unsigned int ncomponents = 0;
 __be32 err = nfserr_jukebox;

 dprintk("nfsd4_encode_components(");

 path_get(&cur);



 for (;;) {
  if (path_equal(&cur, root))
   break;
  if (cur.dentry == cur.mnt->mnt_root) {
   if (follow_up(&cur))
    continue;
   goto out_free;
  }
  if ((ncomponents & 15) == 0) {
   struct dentry **new;
   new = krealloc(components,
     sizeof(*new) * (ncomponents + 16),
     GFP_KERNEL);
   if (!new)
    goto out_free;
   components = new;
  }
  components[ncomponents++] = cur.dentry;
  cur.dentry = dget_parent(cur.dentry);
 }
 err = nfserr_resource;
 p = xdr_reserve_space(xdr, 4);
 if (!p)
  goto out_free;
 *p++ = cpu_to_be32(ncomponents);

 while (ncomponents) {
  struct dentry *dentry = components[ncomponents - 1];
  unsigned int len;

  spin_lock(&dentry->d_lock);
  len = dentry->d_name.len;
  p = xdr_reserve_space(xdr, len + 4);
  if (!p) {
   spin_unlock(&dentry->d_lock);
   goto out_free;
  }
  p = xdr_encode_opaque(p, dentry->d_name.name, len);
  dprintk("/%pd", dentry);
  spin_unlock(&dentry->d_lock);
  dput(dentry);
  ncomponents--;
 }

 err = 0;
out_free:
 dprintk(")\n");
 while (ncomponents)
  dput(components[--ncomponents]);
 kfree(components);
 path_put(&cur);
 return err;
}

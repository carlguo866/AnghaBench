
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; int za_num_integers; int za_name; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int xattr_filldir_t ;
struct inode {int dummy; } ;
struct TYPE_7__ {int z_id; } ;
struct TYPE_6__ {int z_os; } ;


 int ENOENT ;
 int ENXIO ;
 TYPE_4__* ITOZ (struct inode*) ;
 TYPE_3__* ITOZSB (struct inode*) ;
 int strlen (int ) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int ,int ) ;
 int zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zpl_xattr_filldir (int *,int ,int ) ;

int
zpl_xattr_readdir(struct inode *dxip, xattr_filldir_t *xf)
{
 zap_cursor_t zc;
 zap_attribute_t zap;
 int error;

 zap_cursor_init(&zc, ITOZSB(dxip)->z_os, ITOZ(dxip)->z_id);

 while ((error = -zap_cursor_retrieve(&zc, &zap)) == 0) {

  if (zap.za_integer_length != 8 || zap.za_num_integers != 1) {
   error = -ENXIO;
   break;
  }

  error = zpl_xattr_filldir(xf, zap.za_name, strlen(zap.za_name));
  if (error)
   break;

  zap_cursor_advance(&zc);
 }

 zap_cursor_fini(&zc);

 if (error == -ENOENT)
  error = 0;

 return (error);
}

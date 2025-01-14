
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int rc_uint_type ;
struct TYPE_5__ {TYPE_3__* menu; } ;
struct TYPE_6__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ rc_res_resource ;
struct TYPE_7__ {int items; scalar_t__ help; } ;
typedef TYPE_3__ rc_menu ;
typedef int bfd_byte ;


 int RES_TYPE_MENU ;
 int _ (char*) ;
 int bin_to_res_menuexitems (int *,int const*,int,int*) ;
 int bin_to_res_menuitems (int *,int const*,int,int*) ;
 int fatal (int ,int) ;
 scalar_t__ res_alloc (int) ;
 int toosmall (int ) ;
 int windres_get_16 (int *,int const*,int) ;
 scalar_t__ windres_get_32 (int *,int const*,int) ;

rc_res_resource *
bin_to_res_menu (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length)
{
  rc_res_resource *r;
  rc_menu *m;
  rc_uint_type version, read;

  r = (rc_res_resource *) res_alloc (sizeof *r);
  r->type = RES_TYPE_MENU;

  m = (rc_menu *) res_alloc (sizeof (rc_menu));
  r->u.menu = m;

  if (length < 2)
    toosmall (_("menu header"));

  version = windres_get_16 (wrbfd, data, 2);

  if (version == 0)
    {
      if (length < 4)
 toosmall (_("menu header"));
      m->help = 0;
      m->items = bin_to_res_menuitems (wrbfd, data + 4, length - 4, &read);
    }
  else if (version == 1)
    {
      rc_uint_type offset;

      if (length < 8)
 toosmall (_("menuex header"));
      m->help = windres_get_32 (wrbfd, data + 4, 4);
      offset = windres_get_16 (wrbfd, data + 2, 2);
      if (offset + 4 >= length)
 toosmall (_("menuex offset"));
      m->items = bin_to_res_menuexitems (wrbfd, data + 4 + offset,
      length - (4 + offset), &read);
    }
  else
    fatal (_("unsupported menu version %d"), (int) version);

  return r;
}

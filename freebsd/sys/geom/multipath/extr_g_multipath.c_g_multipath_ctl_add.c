
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_multipath_softc {int dummy; } ;
struct g_geom {struct g_multipath_softc* softc; } ;
struct g_class {int dummy; } ;


 int g_multipath_ctl_add_name (struct gctl_req*,struct g_class*,char const*) ;
 struct g_geom* g_multipath_find_geom (struct g_class*,char const*) ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;

__attribute__((used)) static void
g_multipath_ctl_add(struct gctl_req *req, struct g_class *mp)
{
 struct g_multipath_softc *sc;
 struct g_geom *gp;
 const char *mpname, *name;

 mpname = gctl_get_asciiparam(req, "arg0");
        if (mpname == ((void*)0)) {
                gctl_error(req, "No 'arg0' argument");
                return;
        }
 gp = g_multipath_find_geom(mp, mpname);
 if (gp == ((void*)0)) {
  gctl_error(req, "Device %s not found", mpname);
  return;
 }
 sc = gp->softc;

 name = gctl_get_asciiparam(req, "arg1");
 if (name == ((void*)0)) {
  gctl_error(req, "No 'arg1' argument");
  return;
 }
 g_multipath_ctl_add_name(req, mp, name);
}

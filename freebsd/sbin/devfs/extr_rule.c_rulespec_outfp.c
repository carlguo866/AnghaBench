
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; } ;
struct intstr {char* s; int i; } ;
struct group {char* gr_name; } ;
struct devfs_rule {int dr_icond; int dr_dswflags; char* dr_pathptrn; int dr_iacts; int dr_bacts; int dr_uid; int dr_gid; int dr_mode; int dr_incset; int dr_id; } ;
typedef int FILE ;


 int DRA_BACTS ;
 int DRA_GID ;
 int DRA_INCSET ;
 int DRA_MODE ;
 int DRA_UID ;
 int DRB_HIDE ;
 int DRB_UNHIDE ;
 int DRC_DSWFLAGS ;
 int DRC_PATHPTRN ;
 int fprintf (int *,char*,...) ;
 struct group* getgrgid (int) ;
 struct passwd* getpwuid (int) ;
 struct intstr* ist_type ;
 int rid2rn (int ) ;

__attribute__((used)) static void
rulespec_outfp(FILE *fp, struct devfs_rule *dr)
{
 struct intstr *is;
 struct passwd *pw;
 struct group *gr;

 fprintf(fp, "%d", rid2rn(dr->dr_id));

 if (dr->dr_icond & DRC_DSWFLAGS)
  for (is = ist_type; is->s != ((void*)0); ++is)
   if (dr->dr_dswflags & is->i)
    fprintf(fp, " type %s", is->s);
 if (dr->dr_icond & DRC_PATHPTRN)
  fprintf(fp, " path %s", dr->dr_pathptrn);

 if (dr->dr_iacts & DRA_BACTS) {
  if (dr->dr_bacts & DRB_HIDE)
   fprintf(fp, " hide");
  if (dr->dr_bacts & DRB_UNHIDE)
   fprintf(fp, " unhide");
 }
 if (dr->dr_iacts & DRA_UID) {
  pw = getpwuid(dr->dr_uid);
  if (pw == ((void*)0))
   fprintf(fp, " user %d", dr->dr_uid);
  else
   fprintf(fp, " user %s", pw->pw_name);
 }
 if (dr->dr_iacts & DRA_GID) {
  gr = getgrgid(dr->dr_gid);
  if (gr == ((void*)0))
   fprintf(fp, " group %d", dr->dr_gid);
  else
   fprintf(fp, " group %s", gr->gr_name);
 }
 if (dr->dr_iacts & DRA_MODE)
  fprintf(fp, " mode %o", dr->dr_mode);
 if (dr->dr_iacts & DRA_INCSET)
  fprintf(fp, " include %d", dr->dr_incset);

 fprintf(fp, "\n");
}

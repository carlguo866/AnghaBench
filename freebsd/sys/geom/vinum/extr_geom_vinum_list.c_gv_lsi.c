
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct gv_sd {int size; scalar_t__ state; int initialized; int plex_offset; int drive; int drive_offset; int name; int flags; TYPE_1__* drive_sc; int plex; int * plex_sc; } ;
typedef int intmax_t ;
struct TYPE_2__ {char* name; } ;


 int GV_FLAG_V ;
 scalar_t__ GV_SD_INITIALIZING ;
 scalar_t__ GV_SD_REVIVING ;
 int MEGABYTE ;
 int gv_roughlength (int,int) ;
 int gv_sdstate (scalar_t__) ;
 int sbuf_printf (struct sbuf*,char*,...) ;

void
gv_lsi(struct gv_sd *s, struct sbuf *sb, int flags)
{
 if (flags & GV_FLAG_V) {
  sbuf_printf(sb, "Subdisk %s:\n", s->name);
  sbuf_printf(sb, "\t\tSize: %16jd bytes (%jd MB)\n",
      (intmax_t)s->size, (intmax_t)s->size / MEGABYTE);
  sbuf_printf(sb, "\t\tState: %s\n", gv_sdstate(s->state));

  if (s->state == GV_SD_INITIALIZING ||
      s->state == GV_SD_REVIVING) {
   if (s->state == GV_SD_INITIALIZING)
    sbuf_printf(sb, "\t\tInitialized: ");
   else
    sbuf_printf(sb, "\t\tRevived: ");

   sbuf_printf(sb, "%16jd bytes (%d%%)\n",
       (intmax_t)s->initialized,
       (int)((s->initialized * 100) / s->size));
  }

  if (s->plex_sc != ((void*)0)) {
   sbuf_printf(sb, "\t\tPlex %s at offset %jd (%s)\n",
       s->plex, (intmax_t)s->plex_offset,
       gv_roughlength(s->plex_offset, 1));
  }

  sbuf_printf(sb, "\t\tDrive %s (%s) at offset %jd (%s)\n",
      s->drive,
      s->drive_sc == ((void*)0) ? "*missing*" : s->drive_sc->name,
      (intmax_t)s->drive_offset,
      gv_roughlength(s->drive_offset, 1));
  sbuf_printf(sb, "\t\tFlags: %d\n", s->flags);
 } else {
  sbuf_printf(sb, "S %-21s State: ", s->name);
  if (s->state == GV_SD_INITIALIZING ||
      s->state == GV_SD_REVIVING) {
   if (s->state == GV_SD_INITIALIZING)
    sbuf_printf(sb, "I ");
   else
    sbuf_printf(sb, "R ");
   sbuf_printf(sb, "%d%%\t",
       (int)((s->initialized * 100) / s->size));
  } else {
   sbuf_printf(sb, "%s\t", gv_sdstate(s->state));
  }
  sbuf_printf(sb, "D: %-12s Size: %s\n", s->drive,
      gv_roughlength(s->size, 0));
 }
}

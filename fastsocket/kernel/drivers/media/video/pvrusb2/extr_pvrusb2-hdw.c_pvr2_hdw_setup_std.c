
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct pvr2_hdw {int std_mask_eeprom; int std_mask_avail; int std_mask_cur; int std_dirty; int std_enum_cnt; int std_enum_cur; TYPE_2__* std_defs; TYPE_1__* hdw_desc; } ;
typedef int buf ;
struct TYPE_7__ {int msk; int pat; int std; } ;
struct TYPE_6__ {int id; int name; } ;
struct TYPE_5__ {int default_std_mask; } ;


 unsigned int ARRAY_SIZE (TYPE_3__*) ;
 int PVR2_TRACE_ERROR_LEGS ;
 int PVR2_TRACE_STD ;
 int get_default_standard (struct pvr2_hdw*) ;
 int pvr2_hdw_internal_find_stdenum (struct pvr2_hdw*) ;
 int pvr2_hdw_internal_set_std_avail (struct pvr2_hdw*) ;
 unsigned int pvr2_std_id_to_str (char*,int,int) ;
 int pvr2_trace (int ,char*,...) ;
 TYPE_3__* std_eeprom_maps ;

__attribute__((used)) static void pvr2_hdw_setup_std(struct pvr2_hdw *hdw)
{
 char buf[40];
 unsigned int bcnt;
 v4l2_std_id std1,std2,std3;

 std1 = get_default_standard(hdw);
 std3 = std1 ? 0 : hdw->hdw_desc->default_std_mask;

 bcnt = pvr2_std_id_to_str(buf,sizeof(buf),hdw->std_mask_eeprom);
 pvr2_trace(PVR2_TRACE_STD,
     "Supported video standard(s) reported available"
     " in hardware: %.*s",
     bcnt,buf);

 hdw->std_mask_avail = hdw->std_mask_eeprom;

 std2 = (std1|std3) & ~hdw->std_mask_avail;
 if (std2) {
  bcnt = pvr2_std_id_to_str(buf,sizeof(buf),std2);
  pvr2_trace(PVR2_TRACE_STD,
      "Expanding supported video standards"
      " to include: %.*s",
      bcnt,buf);
  hdw->std_mask_avail |= std2;
 }

 pvr2_hdw_internal_set_std_avail(hdw);

 if (std1) {
  bcnt = pvr2_std_id_to_str(buf,sizeof(buf),std1);
  pvr2_trace(PVR2_TRACE_STD,
      "Initial video standard forced to %.*s",
      bcnt,buf);
  hdw->std_mask_cur = std1;
  hdw->std_dirty = !0;
  pvr2_hdw_internal_find_stdenum(hdw);
  return;
 }
 if (std3) {
  bcnt = pvr2_std_id_to_str(buf,sizeof(buf),std3);
  pvr2_trace(PVR2_TRACE_STD,
      "Initial video standard"
      " (determined by device type): %.*s",bcnt,buf);
  hdw->std_mask_cur = std3;
  hdw->std_dirty = !0;
  pvr2_hdw_internal_find_stdenum(hdw);
  return;
 }

 {
  unsigned int idx;
  for (idx = 0; idx < ARRAY_SIZE(std_eeprom_maps); idx++) {
   if (std_eeprom_maps[idx].msk ?
       ((std_eeprom_maps[idx].pat ^
        hdw->std_mask_eeprom) &
        std_eeprom_maps[idx].msk) :
       (std_eeprom_maps[idx].pat !=
        hdw->std_mask_eeprom)) continue;
   bcnt = pvr2_std_id_to_str(buf,sizeof(buf),
        std_eeprom_maps[idx].std);
   pvr2_trace(PVR2_TRACE_STD,
       "Initial video standard guessed as %.*s",
       bcnt,buf);
   hdw->std_mask_cur = std_eeprom_maps[idx].std;
   hdw->std_dirty = !0;
   pvr2_hdw_internal_find_stdenum(hdw);
   return;
  }
 }

 if (hdw->std_enum_cnt > 1) {

  hdw->std_enum_cur = 1;
  hdw->std_mask_cur = hdw->std_defs[hdw->std_enum_cur-1].id;
  hdw->std_dirty = !0;
  pvr2_trace(PVR2_TRACE_STD,
      "Initial video standard auto-selected to %s",
      hdw->std_defs[hdw->std_enum_cur-1].name);
  return;
 }

 pvr2_trace(PVR2_TRACE_ERROR_LEGS,
     "Unable to select a viable initial video standard");
}

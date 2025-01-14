
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int created_at; int type; int views; int unique_visitors; int deletes; int valid_until; int long_unique_visitors; int last_month_unique_visitors; int last_week_unique_visitors; int* subcnt; scalar_t__ visitors; int timezone; int mask_subcnt; scalar_t__ visitors_source; scalar_t__ visitors_geoip_countries; scalar_t__ visitors_countries; scalar_t__ visitors_sex_age; scalar_t__ visitors_cities; scalar_t__ visitors_section; scalar_t__ visitors_polit; scalar_t__ visitors_mstatus; scalar_t__ visitors_age; int visitors_sex; int counter_id; } ;


 int COUNTER_TYPE_LAST ;
 int MAX_AGE ;
 int MAX_MSTATUS ;
 int MAX_POLIT ;
 int MAX_SECTION ;
 int MAX_SEX_AGE ;
 int MAX_SOURCE ;
 int ipopcount (int ) ;
 int now ;
 scalar_t__ write_list (scalar_t__,int ) ;
 scalar_t__ write_list2 (scalar_t__) ;
 scalar_t__ write_tree (scalar_t__) ;
 int writeout (int ,int) ;
 int writeout_char (int ) ;
 int writeout_int (int) ;
 int writeout_long (int ) ;

int write_counter (struct counter *C) {
  int i, j, r = 0;
  writeout_long (C->counter_id); r += 8;
  writeout_int (C->created_at); r += sizeof (int);
  writeout_int (C->type & ~COUNTER_TYPE_LAST); r += sizeof (int);
  writeout_int (C->views); r += sizeof (int);
  writeout_int (C->unique_visitors); r += sizeof (int);
  writeout_int (C->deletes); r += sizeof (int);
  writeout_int (C->created_at); r += sizeof (int);
  writeout_int (C->valid_until); r += sizeof (int);
  writeout_int (C->long_unique_visitors); r += sizeof (int);
  writeout_int (C->last_month_unique_visitors); r += sizeof (int);
  writeout_int (C->last_week_unique_visitors); r += sizeof (int);
  writeout (C->visitors_sex, sizeof (int) * 2); r += 2 * sizeof (int);
  int flag = 0;
  if (C->visitors_age) { flag |= 1 << 0; }
  if (C->visitors_mstatus) { flag |= 1 << 1; }
  if (C->visitors_polit) { flag |= 1 << 2; }
  if (C->visitors_section) { flag |= 1 << 3; }
  if (C->visitors_cities) { flag |= 1 << 4; }
  if (C->visitors_sex_age) { flag |= 1 << 5; }
  if (C->visitors_countries) { flag |= 1 << 6; }
  if (C->visitors_geoip_countries) { flag |= 1 << 7; }
  if (C->visitors_source) { flag |= 1 << 8; }
  writeout_int (flag); r += sizeof (int);
  if (C->visitors_age) { r += write_list (C->visitors_age, MAX_AGE); }
  if (C->visitors_mstatus) { r += write_list (C->visitors_mstatus, MAX_MSTATUS); }
  if (C->visitors_polit) { r += write_list (C->visitors_polit, MAX_POLIT); }
  if (C->visitors_section) { r += write_list (C->visitors_section, MAX_SECTION); }
  if (C->visitors_cities) { r += write_list2 (C->visitors_cities); }
  if (C->visitors_sex_age) { r += write_list (C->visitors_sex_age, MAX_SEX_AGE); }
  if (C->visitors_countries) { r += write_list2 (C->visitors_countries); }
  if (C->visitors_geoip_countries) { r += write_list2 (C->visitors_geoip_countries); }
  if (C->visitors_source) { r += write_list (C->visitors_source, MAX_SOURCE); }


  writeout_long (C->mask_subcnt); r += sizeof (long long);
  j = ipopcount(C->mask_subcnt);
  for (i=0; i < j; i++) {
    writeout_int(C->subcnt[i]); r += sizeof(int);
  }
  writeout_char (C->timezone); r += sizeof (char);
  if (C->valid_until < now) {
    C->visitors = 0;
  }
  r += write_tree (C->visitors);
  return r;
}

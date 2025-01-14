
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAG_REVERSE_SEARCH ;
 int MAX_RATES ;
 int assert (int) ;
 char* rate_first_characters ;
 scalar_t__ strchr (char*,char) ;
 int* tbl_sorting_mode ;

void init_tbl_sorting_mode () {
  const char *p = rate_first_characters;
  int i;
  for (i = 0; i < 128; i++) {
    tbl_sorting_mode[i] = -1;
  }

  assert (strchr(rate_first_characters, 'i') == 0);
  tbl_sorting_mode['i'] = MAX_RATES;
  tbl_sorting_mode['I'] = MAX_RATES | FLAG_REVERSE_SEARCH;
  i = 0;
  while (*p) {
    assert ('a' <= *p && *p <= 'z');
    tbl_sorting_mode[(int) *p] = i;
    tbl_sorting_mode[(int) (*p - 32)] = i | FLAG_REVERSE_SEARCH;
    i++;
    p++;
  }
}

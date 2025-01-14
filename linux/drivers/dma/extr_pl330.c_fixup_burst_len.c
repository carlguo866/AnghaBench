
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PL330_MAX_BURST ;
 int PL330_QUIRK_BROKEN_NO_FLUSHP ;

__attribute__((used)) static int fixup_burst_len(int max_burst_len, int quirks)
{
 if (quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
  return 1;
 else if (max_burst_len > PL330_MAX_BURST)
  return PL330_MAX_BURST;
 else if (max_burst_len < 1)
  return 1;
 else
  return max_burst_len;
}

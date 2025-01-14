
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;


 scalar_t__ TIME_MAX ;
 scalar_t__ parse_timestamp (char const*,char**,int) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int match_object_header_date(const char *date, timestamp_t *timestamp, int *offset)
{
 char *end;
 timestamp_t stamp;
 int ofs;

 if (*date < '0' || '9' < *date)
  return -1;
 stamp = parse_timestamp(date, &end, 10);
 if (*end != ' ' || stamp == TIME_MAX || (end[1] != '+' && end[1] != '-'))
  return -1;
 date = end + 2;
 ofs = strtol(date, &end, 10);
 if ((*end != '\0' && (*end != '\n')) || end != date + 4)
  return -1;
 ofs = (ofs / 100) * 60 + (ofs % 100);
 if (date[-1] == '-')
  ofs = -ofs;
 *timestamp = stamp;
 *offset = ofs;
 return 0;
}

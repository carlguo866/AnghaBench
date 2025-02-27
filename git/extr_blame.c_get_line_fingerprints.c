
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fingerprint {int dummy; } ;


 int get_fingerprint (struct fingerprint*,char const*,char const*) ;

__attribute__((used)) static void get_line_fingerprints(struct fingerprint *fingerprints,
      const char *content, const int *line_starts,
      long first_line, long line_count)
{
 int i;
 const char *linestart, *lineend;

 line_starts += first_line;
 for (i = 0; i < line_count; ++i) {
  linestart = content + line_starts[i];
  lineend = content + line_starts[i + 1];
  get_fingerprint(fingerprints + i, linestart, lineend);
 }
}

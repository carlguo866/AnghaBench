
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_scoreboard {int dummy; } ;
struct blame_entry {int score; scalar_t__ num_lines; scalar_t__ lno; } ;


 char* blame_nth_line (struct blame_scoreboard*,scalar_t__) ;
 scalar_t__ isalnum (unsigned int) ;

unsigned blame_entry_score(struct blame_scoreboard *sb, struct blame_entry *e)
{
 unsigned score;
 const char *cp, *ep;

 if (e->score)
  return e->score;

 score = 1;
 cp = blame_nth_line(sb, e->lno);
 ep = blame_nth_line(sb, e->lno + e->num_lines);
 while (cp < ep) {
  unsigned ch = *((unsigned char *)cp);
  if (isalnum(ch))
   score++;
  cp++;
 }
 e->score = score;
 return score;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mode_info {int x; int y; int mode; int depth; } ;
struct card_info {int nmodes; char* card_name; struct mode_info* modes; } ;


 int printf (char*,char,int,int,char*,char*) ;
 int putchar (char) ;
 int puts (char*) ;
 int sprintf (char*,char*,int,...) ;
 struct card_info* video_cards ;
 struct card_info* video_cards_end ;

__attribute__((used)) static void display_menu(void)
{
 struct card_info *card;
 struct mode_info *mi;
 char ch;
 int i;
 int nmodes;
 int modes_per_line;
 int col;

 nmodes = 0;
 for (card = video_cards; card < video_cards_end; card++)
  nmodes += card->nmodes;

 modes_per_line = 1;
 if (nmodes >= 20)
  modes_per_line = 3;

 for (col = 0; col < modes_per_line; col++)
  puts("Mode: Resolution:  Type: ");
 putchar('\n');

 col = 0;
 ch = '0';
 for (card = video_cards; card < video_cards_end; card++) {
  mi = card->modes;
  for (i = 0; i < card->nmodes; i++, mi++) {
   char resbuf[32];
   int visible = mi->x && mi->y;
   u16 mode_id = mi->mode ? mi->mode :
    (mi->y << 8)+mi->x;

   if (!visible)
    continue;

   if (mi->depth)
    sprintf(resbuf, "%dx%d", mi->y, mi->depth);
   else
    sprintf(resbuf, "%d", mi->y);

   printf("%c %03X %4dx%-7s %-6s",
          ch, mode_id, mi->x, resbuf, card->card_name);
   col++;
   if (col >= modes_per_line) {
    putchar('\n');
    col = 0;
   }

   if (ch == '9')
    ch = 'a';
   else if (ch == 'z' || ch == ' ')
    ch = ' ';
   else
    ch++;
  }
 }
 if (col)
  putchar('\n');
}

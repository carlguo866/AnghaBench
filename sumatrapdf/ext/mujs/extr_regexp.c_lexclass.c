
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstate {char yychar; } ;
typedef char Rune ;


 int L_CCLASS ;
 int L_NCCLASS ;
 int addrange (struct cstate*,char,char) ;
 int addranges_D (struct cstate*) ;
 int addranges_S (struct cstate*) ;
 int addranges_W (struct cstate*) ;
 int addranges_d (struct cstate*) ;
 int addranges_s (struct cstate*) ;
 int addranges_w (struct cstate*) ;
 int die (struct cstate*,char*) ;
 int newcclass (struct cstate*) ;
 int nextrune (struct cstate*) ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static int lexclass(struct cstate *g)
{
 int type = L_CCLASS;
 int quoted, havesave, havedash;
 Rune save = 0;

 newcclass(g);

 quoted = nextrune(g);
 if (!quoted && g->yychar == '^') {
  type = L_NCCLASS;
  quoted = nextrune(g);
 }

 havesave = havedash = 0;
 for (;;) {
  if (g->yychar == 0)
   die(g, "unterminated character class");
  if (!quoted && g->yychar == ']')
   break;

  if (!quoted && g->yychar == '-') {
   if (havesave) {
    if (havedash) {
     addrange(g, save, '-');
     havesave = havedash = 0;
    } else {
     havedash = 1;
    }
   } else {
    save = '-';
    havesave = 1;
   }
  } else if (quoted && strchr("DSWdsw", g->yychar)) {
   if (havesave) {
    addrange(g, save, save);
    if (havedash)
     addrange(g, '-', '-');
   }
   switch (g->yychar) {
   case 'd': addranges_d(g); break;
   case 's': addranges_s(g); break;
   case 'w': addranges_w(g); break;
   case 'D': addranges_D(g); break;
   case 'S': addranges_S(g); break;
   case 'W': addranges_W(g); break;
   }
   havesave = havedash = 0;
  } else {
   if (quoted) {
    if (g->yychar == 'b')
     g->yychar = '\b';
    else if (g->yychar == '0')
     g->yychar = 0;

   }
   if (havesave) {
    if (havedash) {
     addrange(g, save, g->yychar);
     havesave = havedash = 0;
    } else {
     addrange(g, save, save);
     save = g->yychar;
    }
   } else {
    save = g->yychar;
    havesave = 1;
   }
  }

  quoted = nextrune(g);
 }

 if (havesave) {
  addrange(g, save, save);
  if (havedash)
   addrange(g, '-', '-');
 }

 return type;
}

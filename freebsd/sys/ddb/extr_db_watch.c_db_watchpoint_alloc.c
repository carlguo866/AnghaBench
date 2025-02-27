
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* db_watchpoint_t ;
struct TYPE_6__ {struct TYPE_6__* link; } ;


 size_t NWATCHPOINTS ;
 TYPE_1__* db_free_watchpoints ;
 TYPE_1__* db_next_free_watchpoint ;
 int db_printf (char*) ;
 TYPE_1__* db_watch_table ;

__attribute__((used)) static db_watchpoint_t
db_watchpoint_alloc(void)
{
 db_watchpoint_t watch;

 if ((watch = db_free_watchpoints) != 0) {
     db_free_watchpoints = watch->link;
     return (watch);
 }
 if (db_next_free_watchpoint == &db_watch_table[NWATCHPOINTS]) {
     db_printf("All watchpoints used.\n");
     return (0);
 }
 watch = db_next_free_watchpoint;
 db_next_free_watchpoint++;

 return (watch);
}

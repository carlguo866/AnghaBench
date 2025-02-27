
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int daemon_sleep; } ;
struct mddev {TYPE_1__ bitmap_info; struct bitmap* bitmap; } ;
struct bitmap {long daemon_lastrun; } ;


 int md_bitmap_daemon_work (struct mddev*) ;
 int md_bitmap_update_sb (struct bitmap*) ;

void md_bitmap_flush(struct mddev *mddev)
{
 struct bitmap *bitmap = mddev->bitmap;
 long sleep;

 if (!bitmap)
  return;




 sleep = mddev->bitmap_info.daemon_sleep * 2;
 bitmap->daemon_lastrun -= sleep;
 md_bitmap_daemon_work(mddev);
 bitmap->daemon_lastrun -= sleep;
 md_bitmap_daemon_work(mddev);
 bitmap->daemon_lastrun -= sleep;
 md_bitmap_daemon_work(mddev);
 md_bitmap_update_sb(bitmap);
}

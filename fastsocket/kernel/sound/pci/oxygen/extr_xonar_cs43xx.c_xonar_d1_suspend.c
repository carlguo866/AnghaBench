
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int xonar_d1_cleanup (struct oxygen*) ;

__attribute__((used)) static void xonar_d1_suspend(struct oxygen *chip)
{
 xonar_d1_cleanup(chip);
}

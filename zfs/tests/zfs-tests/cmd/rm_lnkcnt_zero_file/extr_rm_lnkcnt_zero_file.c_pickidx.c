
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int random () ;

__attribute__((used)) static int
pickidx(void)
{
 return (random() % 1000);
}

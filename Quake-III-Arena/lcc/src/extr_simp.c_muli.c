
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int warning (char*) ;

__attribute__((used)) static int muli(long x, long y, long min, long max, int needconst) {
 int cond = x > -1 && x <= 1 || y > -1 && y <= 1
 || x < 0 && y < 0 && -x <= max/-y
 || x < 0 && y > 0 && x >= min/y
 || x > 0 && y < 0 && y >= min/x
 || x > 0 && y > 0 && x <= max/y;
 if (!cond && needconst) {
  warning("overflow in constant expression\n");
  cond = 1;
 }
 return cond;


}

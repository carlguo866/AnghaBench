
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONVERT (int ,float) ;
 int CONVVARS (int ) ;
 int EXPECT (double) ;
 int FLOAT ;
 int VarDateFromR4 ;

__attribute__((used)) static void test_VarDateFromR4(void)
{
  CONVVARS(FLOAT);

  CONVERT(VarDateFromR4, -1.0f); EXPECT(-1.0);
  CONVERT(VarDateFromR4, 0.0f); EXPECT(0.0);
  CONVERT(VarDateFromR4, 1.0f); EXPECT(1.0);
  CONVERT(VarDateFromR4, 1.5f); EXPECT(1.5);
}

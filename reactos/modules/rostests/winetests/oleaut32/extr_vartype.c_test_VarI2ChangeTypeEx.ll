; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarI2ChangeTypeEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarI2ChangeTypeEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VT_I2 = common dso_local global i32 0, align 4
@V_I2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@COMMON_TYPETEST = common dso_local global i32 0, align 4
@VT_UI2 = common dso_local global i32 0, align 4
@V_UI2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarI2ChangeTypeEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarI2ChangeTypeEx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %5 = load i32, i32* @VT_I2, align 4
  %6 = load i32, i32* @V_I2, align 4
  %7 = call i32 @INITIAL_TYPETEST(i32 %5, i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @COMMON_TYPETEST, align 4
  %9 = load i32, i32* @VT_I2, align 4
  %10 = load i32, i32* @V_I2, align 4
  %11 = load i32, i32* @VT_UI2, align 4
  %12 = load i32, i32* @V_UI2, align 4
  %13 = call i32 @NEGATIVE_TYPETEST(i32 %9, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @INITIAL_TYPETEST(i32, i32, i8*) #1

declare dso_local i32 @NEGATIVE_TYPETEST(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarI8FromUI2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarI8FromUI2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USHORT = common dso_local global i32 0, align 4
@VarI8FromUI2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarI8FromUI2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarI8FromUI2() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @USHORT, align 4
  %3 = call i32 @CONVVARS(i32 %2)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %13, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 65535
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load i32, i32* @VarI8FromUI2, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @CONVERT(i32 %8, i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @EXPECTI8(i32 %11)
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %4

16:                                               ; preds = %4
  ret void
}

declare dso_local i32 @CONVVARS(i32) #1

declare dso_local i32 @CONVERT(i32, i32) #1

declare dso_local i32 @EXPECTI8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

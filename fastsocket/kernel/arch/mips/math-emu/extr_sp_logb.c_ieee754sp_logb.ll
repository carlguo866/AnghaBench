; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_logb.c_ieee754sp_logb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_sp_logb.c_ieee754sp_logb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPXSP = common dso_local global i32 0, align 4
@CLEARCX = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"logb\00", align 1
@SPDNORMX = common dso_local global i32 0, align 4
@xe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_logb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @COMPXSP, align 4
  %5 = load i32, i32* @CLEARCX, align 4
  %6 = load i32, i32* @EXPLODEXSP, align 4
  %7 = load i32, i32* @xc, align 4
  switch i32 %7, label %21 [
    i32 129, label %8
    i32 130, label %12
    i32 132, label %14
    i32 128, label %16
    i32 133, label %18
    i32 131, label %20
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ieee754sp_nanxcpt(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = call i32 @ieee754sp_inf(i32 0)
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %1
  %17 = call i32 @ieee754sp_inf(i32 1)
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @SPDNORMX, align 4
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %1, %20, %18
  %22 = load i32, i32* @xe, align 4
  %23 = call i32 @ieee754sp_fint(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %16, %14, %12, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ieee754sp_nanxcpt(i32, i8*, i32) #1

declare dso_local i32 @ieee754sp_inf(i32) #1

declare dso_local i32 @ieee754sp_fint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

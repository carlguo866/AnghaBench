; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power7-pmu.c_find_alternative_decode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power7-pmu.c_find_alternative_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @find_alternative_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_alternative_decode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PM_PMC_SH, align 4
  %8 = ashr i32 %6, %7
  %9 = load i32, i32* @PM_PMC_MSK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %29

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, -8
  %22 = icmp eq i32 %21, 64
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PM_PMC_SH, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %24, %26
  %28 = add nsw i32 %27, 8
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %45

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, -8
  %38 = icmp eq i32 %37, 72
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PM_PMC_SH, align 4
  %42 = shl i32 1, %41
  %43 = add nsw i32 %40, %42
  %44 = sub nsw i32 %43, 8
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %35, %32
  store i32 -1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %39, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

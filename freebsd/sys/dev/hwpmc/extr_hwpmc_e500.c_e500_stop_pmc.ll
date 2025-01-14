; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_e500.c_e500_stop_pmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_e500.c_e500_stop_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pmc_hw* }
%struct.pmc_hw = type { %struct.pmc* }
%struct.pmc = type { i32 }

@powerpc_pcpu = common dso_local global %struct.TYPE_2__** null, align 8
@PMR_PMLCa0 = common dso_local global i32 0, align 4
@PMLCax_FC = common dso_local global i32 0, align 4
@PMR_PMLCa1 = common dso_local global i32 0, align 4
@PMR_PMLCa2 = common dso_local global i32 0, align 4
@PMR_PMLCa3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @e500_stop_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e500_stop_pmc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmc*, align 8
  %6 = alloca %struct.pmc_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @powerpc_pcpu, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pmc_hw*, %struct.pmc_hw** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %14, i64 %16
  store %struct.pmc_hw* %17, %struct.pmc_hw** %6, align 8
  %18 = load %struct.pmc_hw*, %struct.pmc_hw** %6, align 8
  %19 = getelementptr inbounds %struct.pmc_hw, %struct.pmc_hw* %18, i32 0, i32 0
  %20 = load %struct.pmc*, %struct.pmc** %19, align 8
  store %struct.pmc* %20, %struct.pmc** %5, align 8
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %58 [
    i32 0, label %22
    i32 1, label %31
    i32 2, label %40
    i32 3, label %49
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* @PMR_PMLCa0, align 4
  %24 = call i32 @mfpmr(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @PMLCax_FC, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @PMR_PMLCa0, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mtpmr(i32 %28, i32 %29)
  br label %59

31:                                               ; preds = %2
  %32 = load i32, i32* @PMR_PMLCa1, align 4
  %33 = call i32 @mfpmr(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @PMLCax_FC, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @PMR_PMLCa1, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mtpmr(i32 %37, i32 %38)
  br label %59

40:                                               ; preds = %2
  %41 = load i32, i32* @PMR_PMLCa2, align 4
  %42 = call i32 @mfpmr(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @PMLCax_FC, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @PMR_PMLCa2, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mtpmr(i32 %46, i32 %47)
  br label %59

49:                                               ; preds = %2
  %50 = load i32, i32* @PMR_PMLCa3, align 4
  %51 = call i32 @mfpmr(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @PMLCax_FC, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @PMR_PMLCa3, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @mtpmr(i32 %55, i32 %56)
  br label %59

58:                                               ; preds = %2
  br label %59

59:                                               ; preds = %58, %49, %40, %31, %22
  ret i32 0
}

declare dso_local i32 @mfpmr(i32) #1

declare dso_local i32 @mtpmr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

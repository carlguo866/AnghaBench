; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i64* }

@XAE_MAX_COUNTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"counter %d is out of range\00", align 1
@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xae_softc*, i32)* @xae_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xae_stat(%struct.xae_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.xae_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.xae_softc* %0, %struct.xae_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @XAE_MAX_COUNTERS, align 4
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %11, i8* %14)
  %16 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @XAE_STATCNT(i32 %17)
  %19 = call i64 @READ8(%struct.xae_softc* %16, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %21 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %7, align 8
  br label %40

34:                                               ; preds = %2
  %35 = load i64, i64* @UINT64_MAX, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %43 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %41, i64* %47, align 8
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @READ8(%struct.xae_softc*, i32) #1

declare dso_local i32 @XAE_STATCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

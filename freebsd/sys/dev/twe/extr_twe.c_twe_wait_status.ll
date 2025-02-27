; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_wait_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_wait_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }

@time_second = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_softc*, i32, i32)* @twe_wait_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_wait_status(%struct.twe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @debug_called(i32 4)
  %11 = load i64, i64* @time_second, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %25, %3
  %16 = load %struct.twe_softc*, %struct.twe_softc** %5, align 8
  %17 = call i32 @TWE_STATUS(%struct.twe_softc* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %30

23:                                               ; preds = %15
  %24 = call i32 @DELAY(i32 100000)
  br label %25

25:                                               ; preds = %23
  %26 = load i64, i64* @time_second, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %15, label %29

29:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_STATUS(%struct.twe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

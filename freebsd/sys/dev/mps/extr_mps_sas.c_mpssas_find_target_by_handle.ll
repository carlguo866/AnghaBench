; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_find_target_by_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_sas.c_mpssas_find_target_by_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpssas_target = type { i64 }
%struct.mpssas_softc = type { i32, %struct.mpssas_target* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpssas_target* @mpssas_find_target_by_handle(%struct.mpssas_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mpssas_target*, align 8
  %5 = alloca %struct.mpssas_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mpssas_target*, align 8
  %9 = alloca i32, align 4
  store %struct.mpssas_softc* %0, %struct.mpssas_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %32, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.mpssas_softc*, %struct.mpssas_softc** %5, align 8
  %14 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.mpssas_softc*, %struct.mpssas_softc** %5, align 8
  %19 = getelementptr inbounds %struct.mpssas_softc, %struct.mpssas_softc* %18, i32 0, i32 1
  %20 = load %struct.mpssas_target*, %struct.mpssas_target** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mpssas_target, %struct.mpssas_target* %20, i64 %22
  store %struct.mpssas_target* %23, %struct.mpssas_target** %8, align 8
  %24 = load %struct.mpssas_target*, %struct.mpssas_target** %8, align 8
  %25 = getelementptr inbounds %struct.mpssas_target, %struct.mpssas_target* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load %struct.mpssas_target*, %struct.mpssas_target** %8, align 8
  store %struct.mpssas_target* %30, %struct.mpssas_target** %4, align 8
  br label %36

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %11

35:                                               ; preds = %11
  store %struct.mpssas_target* null, %struct.mpssas_target** %4, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.mpssas_target*, %struct.mpssas_target** %4, align 8
  ret %struct.mpssas_target* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

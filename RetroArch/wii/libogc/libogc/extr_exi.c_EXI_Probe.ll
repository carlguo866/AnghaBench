; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Probe.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@eximap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EXI_Probe(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eximap, align 8
  %7 = load i64, i64* %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 %7
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load i64, i64* %2, align 8
  %10 = call i64 @__exi_probe(i64 %9)
  store i64 %10, i64* %3, align 8
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* @EXI_DEVICE_0, align 4
  %20 = call i64 @EXI_GetID(i64 %18, i32 %19, i32* %4)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %22, %17
  br label %24

24:                                               ; preds = %23, %12
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

declare dso_local i64 @__exi_probe(i64) #1

declare dso_local i64 @EXI_GetID(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

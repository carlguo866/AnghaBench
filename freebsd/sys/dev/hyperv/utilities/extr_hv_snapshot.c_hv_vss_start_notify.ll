; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_snapshot.c_hv_vss_start_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_hv_snapshot.c_hv_vss_start_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@TIMEOUT_LIMIT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@hv_vss_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @hv_vss_start_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_vss_start_notify(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %47 [
    i32 130, label %10
    i32 129, label %10
    i32 128, label %34
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call i32 @hv_vss_notify(i32* %17, %struct.TYPE_7__* %18)
  br label %25

20:                                               ; preds = %10
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = call i32 @hv_vss_notify(i32* %22, %struct.TYPE_7__* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* @TIMEOUT_LIMIT, align 4
  %29 = load i32, i32* @hz, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @hv_vss_timeout, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = call i32 @callout_reset(i32* %27, i32 %30, i32 %31, %struct.TYPE_7__* %32)
  br label %47

34:                                               ; preds = %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @hv_vss_notify(i32* %36, %struct.TYPE_7__* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* @TIMEOUT_LIMIT, align 4
  %42 = load i32, i32* @hz, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @hv_vss_timeout, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = call i32 @callout_reset(i32* %40, i32 %43, i32 %44, %struct.TYPE_7__* %45)
  br label %47

47:                                               ; preds = %2, %34, %25
  ret void
}

declare dso_local i32 @hv_vss_notify(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

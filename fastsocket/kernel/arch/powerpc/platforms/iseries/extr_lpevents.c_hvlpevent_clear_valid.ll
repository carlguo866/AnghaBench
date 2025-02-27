; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_lpevents.c_hvlpevent_clear_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_lpevents.c_hvlpevent_clear_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HvLpEvent = type { i32 }

@IT_LP_EVENT_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.HvLpEvent*)* @hvlpevent_clear_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvlpevent_clear_valid(%struct.HvLpEvent* %0) #0 {
  %2 = alloca %struct.HvLpEvent*, align 8
  %3 = alloca %struct.HvLpEvent*, align 8
  %4 = alloca i32, align 4
  store %struct.HvLpEvent* %0, %struct.HvLpEvent** %2, align 8
  %5 = load %struct.HvLpEvent*, %struct.HvLpEvent** %2, align 8
  %6 = getelementptr inbounds %struct.HvLpEvent, %struct.HvLpEvent* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IT_LP_EVENT_ALIGN, align 4
  %9 = add nsw i32 %7, %8
  %10 = load i32, i32* @IT_LP_EVENT_ALIGN, align 4
  %11 = sdiv i32 %9, %10
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %44 [
    i32 3, label %14
    i32 2, label %24
    i32 1, label %34
  ]

14:                                               ; preds = %1
  %15 = load %struct.HvLpEvent*, %struct.HvLpEvent** %2, align 8
  %16 = bitcast %struct.HvLpEvent* %15 to i8*
  %17 = load i32, i32* @IT_LP_EVENT_ALIGN, align 4
  %18 = mul nsw i32 3, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = bitcast i8* %20 to %struct.HvLpEvent*
  store %struct.HvLpEvent* %21, %struct.HvLpEvent** %3, align 8
  %22 = load %struct.HvLpEvent*, %struct.HvLpEvent** %3, align 8
  %23 = call i32 @hvlpevent_invalidate(%struct.HvLpEvent* %22)
  br label %24

24:                                               ; preds = %1, %14
  %25 = load %struct.HvLpEvent*, %struct.HvLpEvent** %2, align 8
  %26 = bitcast %struct.HvLpEvent* %25 to i8*
  %27 = load i32, i32* @IT_LP_EVENT_ALIGN, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = bitcast i8* %30 to %struct.HvLpEvent*
  store %struct.HvLpEvent* %31, %struct.HvLpEvent** %3, align 8
  %32 = load %struct.HvLpEvent*, %struct.HvLpEvent** %3, align 8
  %33 = call i32 @hvlpevent_invalidate(%struct.HvLpEvent* %32)
  br label %34

34:                                               ; preds = %1, %24
  %35 = load %struct.HvLpEvent*, %struct.HvLpEvent** %2, align 8
  %36 = bitcast %struct.HvLpEvent* %35 to i8*
  %37 = load i32, i32* @IT_LP_EVENT_ALIGN, align 4
  %38 = mul nsw i32 1, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = bitcast i8* %40 to %struct.HvLpEvent*
  store %struct.HvLpEvent* %41, %struct.HvLpEvent** %3, align 8
  %42 = load %struct.HvLpEvent*, %struct.HvLpEvent** %3, align 8
  %43 = call i32 @hvlpevent_invalidate(%struct.HvLpEvent* %42)
  br label %44

44:                                               ; preds = %34, %1
  %45 = call i32 (...) @mb()
  %46 = load %struct.HvLpEvent*, %struct.HvLpEvent** %2, align 8
  %47 = call i32 @hvlpevent_invalidate(%struct.HvLpEvent* %46)
  ret void
}

declare dso_local i32 @hvlpevent_invalidate(%struct.HvLpEvent*) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

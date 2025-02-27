; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_isRetrodeGamepad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_isRetrodeGamepad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@VID_RETRODE = common dso_local global i64 0, align 8
@PID_RETRODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @isRetrodeGamepad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isRetrodeGamepad(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @VID_RETRODE, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PID_RETRODE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %43

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %17
  br label %42

42:                                               ; preds = %41, %13
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %31, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

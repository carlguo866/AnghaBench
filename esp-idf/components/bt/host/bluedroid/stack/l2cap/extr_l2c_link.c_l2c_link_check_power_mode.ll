; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_check_power_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_link.c_l2c_link_check_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_PM_STS_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"LCB(0x%x) is in PM pending state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2c_link_check_power_mode(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @list_is_empty(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  br label %18

18:                                               ; preds = %30, %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @fixed_queue_is_empty(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %6, align 8
  br label %34

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %5, align 8
  br label %18

34:                                               ; preds = %27, %18
  br label %37

35:                                               ; preds = %1
  %36 = load i64, i64* @TRUE, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @BTM_ReadPowerMode(i32 %43, i64* %4)
  %45 = load i64, i64* @BTM_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @BTM_PM_STS_PENDING, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @L2CAP_TRACE_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %2, align 8
  br label %61

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i64, i64* @FALSE, align 8
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %59, %51
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i64 @list_is_empty(i32) #1

declare dso_local i32 @fixed_queue_is_empty(i32) #1

declare dso_local i64 @BTM_ReadPowerMode(i32, i64*) #1

declare dso_local i32 @L2CAP_TRACE_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

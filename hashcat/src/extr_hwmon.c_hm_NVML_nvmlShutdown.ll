; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_NVML_nvmlShutdown.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_NVML_nvmlShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 (...)* }

@NVML_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"nvmlShutdown(): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @hm_NVML_nvmlShutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hm_NVML_nvmlShutdown(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = call i32 (...) %17()
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @NVML_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i8* @hm_NVML_nvmlErrorString(%struct.TYPE_9__* %24, i64 %25)
  store i8* %26, i8** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @event_log_error(%struct.TYPE_8__* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i8* @hm_NVML_nvmlErrorString(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @event_log_error(%struct.TYPE_8__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

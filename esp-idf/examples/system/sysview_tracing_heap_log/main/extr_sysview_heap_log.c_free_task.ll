; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/sysview_tracing_heap_log/main/extr_sysview_heap_log.c_free_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/sysview_tracing_heap_log/main/extr_sysview_heap_log.c_free_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portMAX_DELAY = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to send to queue!\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Task[%p]: free memory @ %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %1, %24
  store i8* null, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = bitcast i8** %4 to i8*
  %10 = load i32, i32* @portMAX_DELAY, align 4
  %11 = call i64 @xQueueReceive(i32 %8, i8* %9, i32 %10)
  %12 = load i64, i64* @pdPASS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 @ESP_LOGE(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %24

17:                                               ; preds = %7
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @ESP_LOGI(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %19, i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @free(i8* %22)
  br label %24

24:                                               ; preds = %17, %14
  br label %7
}

declare dso_local i64 @xQueueReceive(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i8*) #1

declare dso_local i32 @xTaskGetCurrentTaskHandle(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

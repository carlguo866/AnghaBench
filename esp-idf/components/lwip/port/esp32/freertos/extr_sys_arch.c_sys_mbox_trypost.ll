; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_mbox_trypost.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/freertos/extr_sys_arch.c_sys_mbox_trypost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@pdTRUE = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i32 0, align 4
@ESP_THREAD_SAFE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"trypost mbox=%p fail\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_mbox_trypost(%struct.TYPE_3__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @xQueueSend(i32 %9, i8** %4, i32 0)
  %11 = load i64, i64* @pdTRUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ERR_OK, align 4
  store i32 %14, i32* %5, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @ESP_THREAD_SAFE_DEBUG, align 4
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @LWIP_DEBUGF(i32 %16, i8* %22)
  %24 = load i32, i32* @ERR_MEM, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %15, %13
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i64 @xQueueSend(i32, i8**, i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_http_dispatch_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_http_dispatch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i32, i32 }

@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8*, i32)* @http_dispatch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_dispatch_event(%struct.TYPE_5__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %10, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_6__*)* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = call i32 %34(%struct.TYPE_6__* %35)
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %4
  %38 = load i32, i32* @ESP_OK, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %17
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport.c_esp_transport_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport.c_esp_transport_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_transport_read(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.TYPE_4__*, i8*, i32, i32)**
  %16 = load i32 (%struct.TYPE_4__*, i8*, i32, i32)*, i32 (%struct.TYPE_4__*, i8*, i32, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_4__*, i8*, i32, i32)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.TYPE_4__*, i8*, i32, i32)**
  %22 = load i32 (%struct.TYPE_4__*, i8*, i32, i32)*, i32 (%struct.TYPE_4__*, i8*, i32, i32)** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 %22(%struct.TYPE_4__* %23, i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %29

28:                                               ; preds = %12, %4
  store i32 -1, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

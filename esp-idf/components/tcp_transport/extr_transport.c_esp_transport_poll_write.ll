; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport.c_esp_transport_poll_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport.c_esp_transport_poll_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_transport_poll_write(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.TYPE_4__*, i32)**
  %12 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_4__*, i32)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.TYPE_4__*, i32)**
  %18 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 %18(%struct.TYPE_4__* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

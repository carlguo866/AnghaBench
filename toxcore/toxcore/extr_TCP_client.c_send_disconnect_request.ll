; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_send_disconnect_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_send_disconnect_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@NUM_CLIENT_CONNECTIONS = common dso_local global i64 0, align 8
@NUM_RESERVED_PORTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_disconnect_request(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NUM_CLIENT_CONNECTIONS, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @NUM_RESERVED_PORTS, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @send_disconnect_notification(%struct.TYPE_6__* %23, i64 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %10, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @send_disconnect_notification(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_sock_set.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_sock_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mg_connection*, i64)* }

@INVALID_SOCKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_sock_set(%struct.mg_connection* %0, i64 %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @INVALID_SOCKET, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %10 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.mg_connection*, i64)*, i32 (%struct.mg_connection*, i64)** %14, align 8
  %16 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 %15(%struct.mg_connection* %16, i64 %17)
  br label %19

19:                                               ; preds = %8, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

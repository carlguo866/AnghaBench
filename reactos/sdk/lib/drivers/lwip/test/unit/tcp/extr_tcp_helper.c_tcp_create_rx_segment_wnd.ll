; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_tcp_create_rx_segment_wnd.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_tcp_create_rx_segment_wnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32 }
%struct.tcp_pcb = type { i64, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @tcp_create_rx_segment_wnd(%struct.tcp_pcb* %0, i8* %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.tcp_pcb*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.tcp_pcb*, %struct.tcp_pcb** %8, align 8
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %15, i32 0, i32 5
  %17 = load %struct.tcp_pcb*, %struct.tcp_pcb** %8, align 8
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %17, i32 0, i32 4
  %19 = load %struct.tcp_pcb*, %struct.tcp_pcb** %8, align 8
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tcp_pcb*, %struct.tcp_pcb** %8, align 8
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.tcp_pcb*, %struct.tcp_pcb** %8, align 8
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.tcp_pcb*, %struct.tcp_pcb** %8, align 8
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call %struct.pbuf* @tcp_create_segment_wnd(i32* %16, i32* %18, i32 %21, i32 %24, i8* %25, i64 %26, i64 %31, i64 %36, i32 %37, i32 %38)
  ret %struct.pbuf* %39
}

declare dso_local %struct.pbuf* @tcp_create_segment_wnd(i32*, i32*, i32, i32, i8*, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

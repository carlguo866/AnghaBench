; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___alloc_buffer_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___alloc_buffer_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32 }
%struct.dm_bufio_client = type { i32 (%struct.dm_buffer.0*)* }
%struct.dm_buffer.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_buffer* (%struct.dm_bufio_client*, i32)* @__alloc_buffer_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_buffer* @__alloc_buffer_wait(%struct.dm_bufio_client* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_buffer*, align 8
  %4 = alloca %struct.dm_bufio_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_buffer*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.dm_buffer* @__alloc_buffer_wait_no_callback(%struct.dm_bufio_client* %7, i32 %8)
  store %struct.dm_buffer* %9, %struct.dm_buffer** %6, align 8
  %10 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %11 = icmp ne %struct.dm_buffer* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.dm_buffer* null, %struct.dm_buffer** %3, align 8
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %15 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %14, i32 0, i32 0
  %16 = load i32 (%struct.dm_buffer.0*)*, i32 (%struct.dm_buffer.0*)** %15, align 8
  %17 = icmp ne i32 (%struct.dm_buffer.0*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %20 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %19, i32 0, i32 0
  %21 = load i32 (%struct.dm_buffer.0*)*, i32 (%struct.dm_buffer.0*)** %20, align 8
  %22 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %23 = bitcast %struct.dm_buffer* %22 to %struct.dm_buffer.0*
  %24 = call i32 %21(%struct.dm_buffer.0* %23)
  br label %25

25:                                               ; preds = %18, %13
  %26 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  store %struct.dm_buffer* %26, %struct.dm_buffer** %3, align 8
  br label %27

27:                                               ; preds = %25, %12
  %28 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  ret %struct.dm_buffer* %28
}

declare dso_local %struct.dm_buffer* @__alloc_buffer_wait_no_callback(%struct.dm_bufio_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

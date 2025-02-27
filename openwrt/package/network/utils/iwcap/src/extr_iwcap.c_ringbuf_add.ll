; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/iwcap/src/extr_iwcap.c_ringbuf_add.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/iwcap/src/extr_iwcap.c_ringbuf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ringbuf_entry = type { i32, i32 }
%struct.ringbuf = type { i32, i32, i32, %struct.ringbuf_entry* }
%struct.timeval = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ringbuf_entry* @ringbuf_add(%struct.ringbuf* %0) #0 {
  %2 = alloca %struct.ringbuf*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.ringbuf_entry*, align 8
  store %struct.ringbuf* %0, %struct.ringbuf** %2, align 8
  %5 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %6 = load %struct.ringbuf*, %struct.ringbuf** %2, align 8
  %7 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %6, i32 0, i32 3
  %8 = load %struct.ringbuf_entry*, %struct.ringbuf_entry** %7, align 8
  %9 = load %struct.ringbuf*, %struct.ringbuf** %2, align 8
  %10 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.ringbuf*, %struct.ringbuf** %2, align 8
  %14 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %11, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ringbuf_entry, %struct.ringbuf_entry* %8, i64 %17
  store %struct.ringbuf_entry* %18, %struct.ringbuf_entry** %4, align 8
  %19 = load %struct.ringbuf*, %struct.ringbuf** %2, align 8
  %20 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ringbuf*, %struct.ringbuf** %2, align 8
  %23 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = srem i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.ringbuf_entry*, %struct.ringbuf_entry** %4, align 8
  %27 = load %struct.ringbuf*, %struct.ringbuf** %2, align 8
  %28 = getelementptr inbounds %struct.ringbuf, %struct.ringbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memset(%struct.ringbuf_entry* %26, i32 0, i32 %29)
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ringbuf_entry*, %struct.ringbuf_entry** %4, align 8
  %34 = getelementptr inbounds %struct.ringbuf_entry, %struct.ringbuf_entry* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ringbuf_entry*, %struct.ringbuf_entry** %4, align 8
  %38 = getelementptr inbounds %struct.ringbuf_entry, %struct.ringbuf_entry* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ringbuf_entry*, %struct.ringbuf_entry** %4, align 8
  ret %struct.ringbuf_entry* %39
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @memset(%struct.ringbuf_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

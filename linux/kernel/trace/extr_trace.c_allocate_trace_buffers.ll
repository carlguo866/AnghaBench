; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_allocate_trace_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_allocate_trace_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@allocate_snapshot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, i32)* @allocate_trace_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_trace_buffers(%struct.trace_array* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %8 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %9 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %8, i32 0, i32 1
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @allocate_trace_buffer(%struct.trace_array* %7, %struct.TYPE_2__* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %14
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @allocate_trace_buffer(%struct.trace_array*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

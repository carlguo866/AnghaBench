; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_ftrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_ftrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.trace_array_cpu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftrace(%struct.trace_array* %0, %struct.trace_array_cpu* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.trace_array*, align 8
  %8 = alloca %struct.trace_array_cpu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %7, align 8
  store %struct.trace_array_cpu* %1, %struct.trace_array_cpu** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.trace_array_cpu*, %struct.trace_array_cpu** %8, align 8
  %14 = getelementptr inbounds %struct.trace_array_cpu, %struct.trace_array_cpu* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load %struct.trace_array*, %struct.trace_array** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @trace_function(%struct.trace_array* %22, i64 %23, i64 %24, i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %6
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @trace_function(%struct.trace_array*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__in_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__in_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_stack = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_stack*)* @thread_stack__in_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_stack__in_kernel(%struct.thread_stack* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_stack*, align 8
  store %struct.thread_stack* %0, %struct.thread_stack** %3, align 8
  %4 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  %5 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  %11 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.thread_stack*, %struct.thread_stack** %3, align 8
  %14 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %9, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

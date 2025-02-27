; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_read_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_read_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_iter = type { %struct.ring_buffer_per_cpu* }
%struct.ring_buffer_per_cpu = type { i32, i32, i32 }
%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_iter* @ring_buffer_read_start(%struct.ring_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.ring_buffer_iter*, align 8
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ring_buffer_per_cpu*, align 8
  %7 = alloca %struct.ring_buffer_iter*, align 8
  %8 = alloca i64, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cpumask_test_cpu(i32 %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.ring_buffer_iter* null, %struct.ring_buffer_iter** %3, align 8
  br label %54

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ring_buffer_iter* @kmalloc(i32 8, i32 %17)
  store %struct.ring_buffer_iter* %18, %struct.ring_buffer_iter** %7, align 8
  %19 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %20 = icmp ne %struct.ring_buffer_iter* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.ring_buffer_iter* null, %struct.ring_buffer_iter** %3, align 8
  br label %54

22:                                               ; preds = %16
  %23 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %23, i32 0, i32 0
  %25 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %25, i64 %27
  %29 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %28, align 8
  store %struct.ring_buffer_per_cpu* %29, %struct.ring_buffer_per_cpu** %6, align 8
  %30 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %31 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %32 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %31, i32 0, i32 0
  store %struct.ring_buffer_per_cpu* %30, %struct.ring_buffer_per_cpu** %32, align 8
  %33 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %34 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %33, i32 0, i32 2
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = call i32 (...) @synchronize_sched()
  %37 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %37, i32 0, i32 0
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %41, i32 0, i32 1
  %43 = call i32 @__raw_spin_lock(i32* %42)
  %44 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %45 = call i32 @rb_iter_reset(%struct.ring_buffer_iter* %44)
  %46 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %47 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %46, i32 0, i32 1
  %48 = call i32 @__raw_spin_unlock(i32* %47)
  %49 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %50 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  store %struct.ring_buffer_iter* %53, %struct.ring_buffer_iter** %3, align 8
  br label %54

54:                                               ; preds = %22, %21, %15
  %55 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  ret %struct.ring_buffer_iter* %55
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local %struct.ring_buffer_iter* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @synchronize_sched(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__raw_spin_lock(i32*) #1

declare dso_local i32 @rb_iter_reset(%struct.ring_buffer_iter*) #1

declare dso_local i32 @__raw_spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

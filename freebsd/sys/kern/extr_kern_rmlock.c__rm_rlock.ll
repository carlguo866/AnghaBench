; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c__rm_rlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rmlock.c__rm_rlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i32, i32 }
%struct.pcpu = type { i32 }
%struct.rmlock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rm_priotracker = type { %struct.rmlock*, %struct.thread*, i64 }

@curthread = common dso_local global %struct.thread* null, align 8
@LO_SLEEPABLE = common dso_local global i32 0, align 4
@cpuid_to_pcpu = common dso_local global %struct.pcpu** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rm_rlock(%struct.rmlock* %0, %struct.rm_priotracker* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmlock*, align 8
  %6 = alloca %struct.rm_priotracker*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.pcpu*, align 8
  store %struct.rmlock* %0, %struct.rmlock** %5, align 8
  store %struct.rm_priotracker* %1, %struct.rm_priotracker** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %8, align 8
  %11 = call i64 (...) @SCHEDULER_STOPPED()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %73

14:                                               ; preds = %3
  %15 = load %struct.rm_priotracker*, %struct.rm_priotracker** %6, align 8
  %16 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.thread*, %struct.thread** %8, align 8
  %18 = load %struct.rm_priotracker*, %struct.rm_priotracker** %6, align 8
  %19 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %18, i32 0, i32 1
  store %struct.thread* %17, %struct.thread** %19, align 8
  %20 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %21 = load %struct.rm_priotracker*, %struct.rm_priotracker** %6, align 8
  %22 = getelementptr inbounds %struct.rm_priotracker, %struct.rm_priotracker* %21, i32 0, i32 0
  store %struct.rmlock* %20, %struct.rmlock** %22, align 8
  %23 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %24 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LO_SLEEPABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %14
  %31 = call i32 (...) @THREAD_NO_SLEEPING()
  br label %32

32:                                               ; preds = %30, %14
  %33 = load %struct.thread*, %struct.thread** %8, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = call i32 (...) @__compiler_membar()
  %38 = load %struct.pcpu**, %struct.pcpu*** @cpuid_to_pcpu, align 8
  %39 = load %struct.thread*, %struct.thread** %8, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.pcpu*, %struct.pcpu** %38, i64 %41
  %43 = load %struct.pcpu*, %struct.pcpu** %42, align 8
  store %struct.pcpu* %43, %struct.pcpu** %9, align 8
  %44 = load %struct.pcpu*, %struct.pcpu** %9, align 8
  %45 = load %struct.rm_priotracker*, %struct.rm_priotracker** %6, align 8
  %46 = call i32 @rm_tracker_add(%struct.pcpu* %44, %struct.rm_priotracker* %45)
  %47 = call i32 (...) @sched_pin()
  %48 = call i32 (...) @__compiler_membar()
  %49 = load %struct.thread*, %struct.thread** %8, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.thread*, %struct.thread** %8, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pcpu*, %struct.pcpu** %9, align 8
  %57 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %60 = getelementptr inbounds %struct.rmlock, %struct.rmlock* %59, i32 0, i32 0
  %61 = call i32 @CPU_ISSET(i32 %58, i32* %60)
  %62 = or i32 %55, %61
  %63 = icmp eq i32 0, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @__predict_true(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %73

68:                                               ; preds = %32
  %69 = load %struct.rmlock*, %struct.rmlock** %5, align 8
  %70 = load %struct.rm_priotracker*, %struct.rm_priotracker** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @_rm_rlock_hard(%struct.rmlock* %69, %struct.rm_priotracker* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %67, %13
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @THREAD_NO_SLEEPING(...) #1

declare dso_local i32 @__compiler_membar(...) #1

declare dso_local i32 @rm_tracker_add(%struct.pcpu*, %struct.rm_priotracker*) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @_rm_rlock_hard(%struct.rmlock*, %struct.rm_priotracker*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

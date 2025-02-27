; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_idle_acpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_idle_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@monitorbuf = common dso_local global i32 0, align 4
@STATE_SLEEPING = common dso_local global i32 0, align 4
@STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cpu_idle_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_idle_acpi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @monitorbuf, align 4
  %5 = call %struct.TYPE_2__* @PCPU_PTR(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @STATE_SLEEPING, align 4
  %9 = call i32 @atomic_store_int(i32* %7, i32 %8)
  %10 = call i32 (...) @disable_intr()
  %11 = call i64 (...) @sched_runnable()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (...) @enable_intr()
  br label %22

15:                                               ; preds = %1
  br i1 true, label %16, label %19

16:                                               ; preds = %15
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @cpu_idle_hook(i32 %17)
  br label %21

19:                                               ; preds = %15
  %20 = call i32 (...) @acpi_cpu_c1()
  br label %21

21:                                               ; preds = %19, %16
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @STATE_RUNNING, align 4
  %25 = call i32 @atomic_store_int(i32* %23, i32 %24)
  ret void
}

declare dso_local %struct.TYPE_2__* @PCPU_PTR(i32) #1

declare dso_local i32 @atomic_store_int(i32*, i32) #1

declare dso_local i32 @disable_intr(...) #1

declare dso_local i64 @sched_runnable(...) #1

declare dso_local i32 @enable_intr(...) #1

declare dso_local i32 @cpu_idle_hook(i32) #1

declare dso_local i32 @acpi_cpu_c1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

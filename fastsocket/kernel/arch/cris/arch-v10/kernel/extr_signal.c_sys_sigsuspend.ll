; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_signal.c_sys_sigsuspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_signal.c_sys_sigsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32 }

@_BLOCKABLE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TIF_RESTORE_SIGMASK = common dso_local global i32 0, align 4
@ERESTARTNOHAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigsuspend(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.pt_regs* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.pt_regs* %6, %struct.pt_regs** %14, align 8
  %15 = load i32, i32* @_BLOCKABLE, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @siginitset(i32* %29, i32 %30)
  %32 = call i32 (...) @recalc_sigpending()
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = call i32 (...) @schedule()
  %42 = load i32, i32* @TIF_RESTORE_SIGMASK, align 4
  %43 = call i32 @set_thread_flag(i32 %42)
  %44 = load i32, i32* @ERESTARTNOHAND, align 4
  %45 = sub nsw i32 0, %44
  ret i32 %45
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @siginitset(i32*, i32) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @set_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

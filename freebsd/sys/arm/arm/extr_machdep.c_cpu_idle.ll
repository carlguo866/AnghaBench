; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cpu_idle(%d) at %d\00", align 1
@curcpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cpu_idle(%d) at %d done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_idle(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @KTR_SPARE2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @curcpu, align 4
  %6 = call i32 @CTR2(i32 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5)
  %7 = call i32 (...) @spinlock_enter()
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @cpu_idleclock()
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i32 (...) @sched_runnable()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @cpu_sleep(i32 0)
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (...) @cpu_activeclock()
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i32 (...) @spinlock_exit()
  %24 = load i32, i32* @KTR_SPARE2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @curcpu, align 4
  %27 = call i32 @CTR2(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @cpu_idleclock(...) #1

declare dso_local i32 @sched_runnable(...) #1

declare dso_local i32 @cpu_sleep(i32) #1

declare dso_local i32 @cpu_activeclock(...) #1

declare dso_local i32 @spinlock_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

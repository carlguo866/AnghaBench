; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_ltq_pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_ltq_pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_pmu_lock = common dso_local global i32 0, align 4
@PMU_PWDCR = common dso_local global i32 0, align 4
@PMU_PWDSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"activating PMU module failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ltq_pmu_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1000000, i32* %3, align 4
  %4 = call i32 @spin_lock(i32* @g_pmu_lock)
  %5 = load i32, i32* @PMU_PWDCR, align 4
  %6 = call i32 @pmu_r32(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = load i32, i32* @PMU_PWDCR, align 4
  %11 = call i32 @pmu_w32(i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %23, %1
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* @PMU_PWDSR, align 4
  %19 = call i32 @pmu_r32(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i1 [ false, %13 ], [ %22, %17 ]
  br i1 %24, label %12, label %25

25:                                               ; preds = %23
  %26 = call i32 @spin_unlock(i32* @g_pmu_lock)
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pmu_w32(i32, i32) #1

declare dso_local i32 @pmu_r32(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

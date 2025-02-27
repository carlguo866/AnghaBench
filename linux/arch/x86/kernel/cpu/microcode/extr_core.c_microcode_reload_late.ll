; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_microcode_reload_late.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_microcode_reload_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@late_cpus_in = common dso_local global i32 0, align 4
@late_cpus_out = common dso_local global i32 0, align 4
@__reload_late = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Reload completed, microcode revision: 0x%x\0A\00", align 1
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @microcode_reload_late to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microcode_reload_late() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @atomic_set(i32* @late_cpus_in, i32 0)
  %3 = call i32 @atomic_set(i32* @late_cpus_out, i32 0)
  %4 = load i32, i32* @__reload_late, align 4
  %5 = load i32, i32* @cpu_online_mask, align 4
  %6 = call i32 @stop_machine_cpuslocked(i32 %4, i32* null, i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @microcode_check()
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @stop_machine_cpuslocked(i32, i32*, i32) #1

declare dso_local i32 @microcode_check(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

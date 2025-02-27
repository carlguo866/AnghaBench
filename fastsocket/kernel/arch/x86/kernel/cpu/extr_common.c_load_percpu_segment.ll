; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_common.c_load_percpu_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_common.c_load_percpu_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gs = common dso_local global i32 0, align 4
@MSR_GS_BASE = common dso_local global i32 0, align 4
@irq_stack_union = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@__KERNEL_PERCPU = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_percpu_segment(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @gs, align 4
  %4 = call i32 @loadsegment(i32 %3, i32 0)
  %5 = load i32, i32* @MSR_GS_BASE, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @irq_stack_union, i32 0, i32 0), align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @per_cpu(i32 %6, i32 %7)
  %9 = call i32 @wrmsrl(i32 %5, i64 %8)
  %10 = call i32 (...) @load_stack_canary_segment()
  ret void
}

declare dso_local i32 @loadsegment(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

declare dso_local i64 @per_cpu(i32, i32) #1

declare dso_local i32 @load_stack_canary_segment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

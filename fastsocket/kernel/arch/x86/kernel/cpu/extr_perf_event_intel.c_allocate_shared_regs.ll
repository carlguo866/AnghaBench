; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_allocate_shared_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_allocate_shared_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_shared_regs = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EXTRA_REG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_shared_regs* @allocate_shared_regs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_shared_regs*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @cpu_to_node(i32 %6)
  %8 = call %struct.intel_shared_regs* @kzalloc_node(i32 16, i32 %5, i32 %7)
  store %struct.intel_shared_regs* %8, %struct.intel_shared_regs** %3, align 8
  %9 = load %struct.intel_shared_regs*, %struct.intel_shared_regs** %3, align 8
  %10 = icmp ne %struct.intel_shared_regs* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EXTRA_REG_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.intel_shared_regs*, %struct.intel_shared_regs** %3, align 8
  %18 = getelementptr inbounds %struct.intel_shared_regs, %struct.intel_shared_regs* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_init(i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.intel_shared_regs*, %struct.intel_shared_regs** %3, align 8
  %30 = getelementptr inbounds %struct.intel_shared_regs, %struct.intel_shared_regs* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.intel_shared_regs*, %struct.intel_shared_regs** %3, align 8
  ret %struct.intel_shared_regs* %32
}

declare dso_local %struct.intel_shared_regs* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

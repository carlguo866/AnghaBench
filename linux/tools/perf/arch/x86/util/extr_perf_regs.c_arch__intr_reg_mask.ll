; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_perf_regs.c_arch__intr_reg_mask.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_perf_regs.c_arch__intr_reg_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PERF_REG_EXTENDED_MASK = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_INTR = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@PERF_REGS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch__intr_reg_mask() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.perf_event_attr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 0
  %5 = load i32, i32* @PERF_REG_EXTENDED_MASK, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 2
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 3
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 4
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 5
  %11 = load i32, i32* @PERF_SAMPLE_REGS_INTR, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 6
  %13 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 7
  %15 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 4
  store i32 1, i32* %16, align 4
  %17 = call i32 @event_attr_init(%struct.perf_event_attr* %2)
  %18 = call i32 @sys_perf_event_open(%struct.perf_event_attr* %2, i32 0, i32 -1, i32 -1, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %0
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @close(i32 %22)
  %24 = load i32, i32* @PERF_REG_EXTENDED_MASK, align 4
  %25 = load i32, i32* @PERF_REGS_MASK, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %1, align 4
  br label %29

27:                                               ; preds = %0
  %28 = load i32, i32* @PERF_REGS_MASK, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @event_attr_init(%struct.perf_event_attr*) #1

declare dso_local i32 @sys_perf_event_open(%struct.perf_event_attr*, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

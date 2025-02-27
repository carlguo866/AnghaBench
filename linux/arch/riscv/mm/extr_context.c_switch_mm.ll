; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/mm/extr_context.c_switch_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/mm/extr_context.c_switch_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }

@CSR_SATP = common dso_local global i32 0, align 4
@SATP_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_mm(%struct.mm_struct* %0, %struct.mm_struct* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %10 = icmp eq %struct.mm_struct* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %36

15:                                               ; preds = %3
  %16 = call i32 (...) @smp_processor_id()
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %19 = call i32 @mm_cpumask(%struct.mm_struct* %18)
  %20 = call i32 @cpumask_clear_cpu(i32 %17, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %23 = call i32 @mm_cpumask(%struct.mm_struct* %22)
  %24 = call i32 @cpumask_set_cpu(i32 %21, i32 %23)
  %25 = load i32, i32* @CSR_SATP, align 4
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @virt_to_pfn(i32 %28)
  %30 = load i32, i32* @SATP_MODE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @csr_write(i32 %25, i32 %31)
  %33 = call i32 (...) @local_flush_tlb_all()
  %34 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %35 = call i32 @flush_icache_deferred(%struct.mm_struct* %34)
  br label %36

36:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @csr_write(i32, i32) #1

declare dso_local i32 @virt_to_pfn(i32) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @flush_icache_deferred(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

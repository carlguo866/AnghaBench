; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_smp.c_flush_tlb_kernel_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_smp.c_flush_tlb_kernel_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlb_args = type { i64 }

@ipi_flush_tlb_kernel_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_kernel_page(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tlb_args, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 (...) @tlb_ops_need_broadcast()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = getelementptr inbounds %struct.tlb_args, %struct.tlb_args* %3, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = load i32, i32* @ipi_flush_tlb_kernel_page, align 4
  %10 = call i32 @on_each_cpu(i32 %9, %struct.tlb_args* %3, i32 1)
  br label %14

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @local_flush_tlb_kernel_page(i64 %12)
  br label %14

14:                                               ; preds = %11, %6
  ret void
}

declare dso_local i64 @tlb_ops_need_broadcast(...) #1

declare dso_local i32 @on_each_cpu(i32, %struct.tlb_args*, i32) #1

declare dso_local i32 @local_flush_tlb_kernel_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

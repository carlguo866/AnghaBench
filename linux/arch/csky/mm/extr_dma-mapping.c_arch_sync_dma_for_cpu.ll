; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_dma-mapping.c_arch_sync_dma_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_dma-mapping.c_arch_sync_dma_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@dma_inv_range = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_sync_dma_for_cpu(%struct.device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %16 [
    i32 128, label %10
    i32 129, label %11
    i32 130, label %11
  ]

10:                                               ; preds = %4
  br label %18

11:                                               ; preds = %4, %4
  %12 = load i32, i32* %6, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @dma_inv_range, align 4
  %15 = call i32 @cache_op(i32 %12, i64 %13, i32 %14)
  br label %18

16:                                               ; preds = %4
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %10, %16, %11
  ret void
}

declare dso_local i32 @cache_op(i32, i64, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

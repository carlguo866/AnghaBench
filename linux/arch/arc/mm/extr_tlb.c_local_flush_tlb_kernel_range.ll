; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_local_flush_tlb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_local_flush_tlb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = sub i64 %6, %7
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = mul nsw i32 %9, 32
  %11 = sext i32 %10 to i64
  %12 = icmp uge i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @local_flush_tlb_all()
  br label %39

18:                                               ; preds = %2
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  br label %24

24:                                               ; preds = %28, %18
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @tlb_entry_erase(i64 %29)
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %3, align 8
  br label %24

35:                                               ; preds = %24
  %36 = call i32 (...) @utlb_invalidate()
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  br label %39

39:                                               ; preds = %35, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @tlb_entry_erase(i64) #1

declare dso_local i32 @utlb_invalidate(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

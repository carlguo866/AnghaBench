; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/mm/extr_tlb.c_local_flush_tlb_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/mm/extr_tlb.c_local_flush_tlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_ITLB_SETS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @NUM_ITLB_SETS, align 8
  store i64 %3, i64* %2, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %16, %0
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* %2, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = call i32 @SPR_DTLBMR_BASE(i32 0)
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @mtspr_off(i32 %10, i32 %11, i32 0)
  %13 = call i32 @SPR_ITLBMR_BASE(i32 0)
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @mtspr_off(i32 %13, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %4

19:                                               ; preds = %4
  ret void
}

declare dso_local i32 @mtspr_off(i32, i32, i32) #1

declare dso_local i32 @SPR_DTLBMR_BASE(i32) #1

declare dso_local i32 @SPR_ITLBMR_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

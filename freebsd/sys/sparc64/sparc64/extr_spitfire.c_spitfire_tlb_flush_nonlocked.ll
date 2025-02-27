; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_spitfire.c_spitfire_tlb_flush_nonlocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_spitfire.c_spitfire_tlb_flush_nonlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPITFIRE_TLB_ENTRIES = common dso_local global i64 0, align 8
@TLB_DAR_T32 = common dso_local global i32 0, align 4
@ASI_DTLB_DATA_ACCESS_REG = common dso_local global i32 0, align 4
@TD_L = common dso_local global i32 0, align 4
@ASI_ITLB_DATA_ACCESS_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spitfire_tlb_flush_nonlocked() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %33, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @SPITFIRE_TLB_ENTRIES, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = load i32, i32* @TLB_DAR_T32, align 4
  %9 = load i64, i64* %1, align 8
  %10 = call i64 @TLB_DAR_SLOT(i32 %8, i64 %9)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %13 = call i32 @ldxa(i64 %11, i32 %12)
  %14 = load i32, i32* @TD_L, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %20 = call i32 @stxa_sync(i64 %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %17, %7
  %22 = load i64, i64* %2, align 8
  %23 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %24 = call i32 @ldxa(i64 %22, i32 %23)
  %25 = load i32, i32* @TD_L, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i64, i64* %2, align 8
  %30 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %31 = call i32 @stxa_sync(i64 %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %28, %21
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %1, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %1, align 8
  br label %3

36:                                               ; preds = %3
  ret void
}

declare dso_local i64 @TLB_DAR_SLOT(i32, i64) #1

declare dso_local i32 @ldxa(i64, i32) #1

declare dso_local i32 @stxa_sync(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

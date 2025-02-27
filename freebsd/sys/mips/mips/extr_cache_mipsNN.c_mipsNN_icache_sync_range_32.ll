; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_icache_sync_range_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_cache_mipsNN.c_mipsNN_icache_sync_range_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CACHE_R4K_I = common dso_local global i32 0, align 4
@CACHEOP_R4K_HIT_INV = common dso_local global i32 0, align 4
@SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipsNN_icache_sync_range_32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %6, %7
  %9 = call i32 @round_line32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @trunc_line32(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %13, %14
  %16 = call i32 @mips_intern_dcache_wb_range(i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %22, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %18, %19
  %21 = icmp sge i32 %20, 1024
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @CACHE_R4K_I, align 4
  %25 = load i32, i32* @CACHEOP_R4K_HIT_INV, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @cache_r4k_op_32lines_32(i32 %23, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1024
  store i32 %29, i32* %3, align 4
  br label %17

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @CACHE_R4K_I, align 4
  %38 = load i32, i32* @CACHEOP_R4K_HIT_INV, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @cache_op_r4k_line(i32 %36, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 32
  store i32 %42, i32* %3, align 4
  br label %31

43:                                               ; preds = %31
  %44 = load i32, i32* @SYNC, align 4
  ret void
}

declare dso_local i32 @round_line32(i32) #1

declare dso_local i32 @trunc_line32(i32) #1

declare dso_local i32 @mips_intern_dcache_wb_range(i32, i32) #1

declare dso_local i32 @cache_r4k_op_32lines_32(i32, i32) #1

declare dso_local i32 @cache_op_r4k_line(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-octeon.c_l2c_lock_mem_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-octeon.c_l2c_lock_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_CACHE_LINE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @l2c_lock_mem_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2c_lock_mem_region(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = add nsw i64 %6, %7
  %9 = sub nsw i64 %8, 1
  %10 = load i64, i64* @CVMX_CACHE_LINE_SIZE, align 8
  %11 = call i64 @ALIGN(i64 %9, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @CVMX_CACHE_LINE_SIZE, align 8
  %14 = call i64 @ALIGN(i64 %12, i64 %13)
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %19, %2
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @l2c_lock_line(i64 %20)
  %22 = load i64, i64* @CVMX_CACHE_LINE_SIZE, align 8
  %23 = load i64, i64* %3, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %3, align 8
  br label %15

25:                                               ; preds = %15
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  ret void
}

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @l2c_lock_line(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 565}

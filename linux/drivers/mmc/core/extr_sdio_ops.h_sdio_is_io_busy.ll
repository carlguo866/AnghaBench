; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_ops.h_sdio_is_io_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_ops.h_sdio_is_io_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_IO_RW_EXTENDED = common dso_local global i32 0, align 4
@SD_IO_RW_DIRECT = common dso_local global i32 0, align 4
@SDIO_CCCR_ABORT = common dso_local global i32 0, align 4
@SDIO_CCCR_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sdio_is_io_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_is_io_busy(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 9
  %8 = and i32 %7, 131071
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SD_IO_RW_EXTENDED, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SD_IO_RW_DIRECT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SDIO_CCCR_ABORT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SDIO_CCCR_SUSPEND, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi i1 [ false, %12 ], [ %26, %24 ]
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i1 [ true, %2 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

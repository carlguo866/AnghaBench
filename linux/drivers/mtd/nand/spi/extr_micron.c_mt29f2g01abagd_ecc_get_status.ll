; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_micron.c_mt29f2g01abagd_ecc_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_micron.c_mt29f2g01abagd_ecc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i32 }

@MICRON_STATUS_ECC_MASK = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, i32)* @mt29f2g01abagd_ecc_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt29f2g01abagd_ecc_get_status(%struct.spinand_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MICRON_STATUS_ECC_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %16 [
    i32 129, label %9
    i32 128, label %10
    i32 132, label %13
    i32 131, label %14
    i32 130, label %15
  ]

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

10:                                               ; preds = %2
  %11 = load i32, i32* @EBADMSG, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %20

13:                                               ; preds = %2
  store i32 3, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  store i32 6, i32* %3, align 4
  br label %20

15:                                               ; preds = %2
  store i32 8, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %15, %14, %13, %10, %9
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_hwecc4_ooblayout_small_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_hwecc4_ooblayout_small_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @hwecc4_ooblayout_small_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwecc4_ooblayout_small_ecc(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @ERANGE, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %36

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %20 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %19, i32 0, i32 1
  store i32 5, i32* %20, align 4
  br label %35

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %26 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %25, i32 0, i32 0
  store i32 6, i32* %26, align 4
  %27 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %27, i32 0, i32 1
  store i32 2, i32* %28, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %31 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %30, i32 0, i32 0
  store i32 13, i32* %31, align 4
  %32 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %33 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %32, i32 0, i32 1
  store i32 3, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %16
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

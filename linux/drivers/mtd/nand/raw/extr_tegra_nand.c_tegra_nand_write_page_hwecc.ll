; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_write_page_hwecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_write_page_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, i32 }
%struct.mtd_info = type { i32 }
%struct.tegra_nand_controller = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @tegra_nand_write_page_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nand_write_page_hwecc(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.tegra_nand_controller*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %9, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.tegra_nand_controller* @to_tegra_ctrl(i32 %17)
  store %struct.tegra_nand_controller* %18, %struct.tegra_nand_controller** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32* [ %24, %21 ], [ null, %25 ]
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %11, align 8
  %29 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %10, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %31 = call i32 @tegra_nand_hw_ecc(%struct.tegra_nand_controller* %29, %struct.nand_chip* %30, i32 1)
  %32 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %33 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @tegra_nand_page_xfer(%struct.mtd_info* %32, %struct.nand_chip* %33, i8* %35, i8* %36, i32 0, i32 %37, i32 0)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %10, align 8
  %40 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %41 = call i32 @tegra_nand_hw_ecc(%struct.tegra_nand_controller* %39, %struct.nand_chip* %40, i32 0)
  %42 = load i32, i32* %12, align 4
  ret i32 %42
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.tegra_nand_controller* @to_tegra_ctrl(i32) #1

declare dso_local i32 @tegra_nand_hw_ecc(%struct.tegra_nand_controller*, %struct.nand_chip*, i32) #1

declare dso_local i32 @tegra_nand_page_xfer(%struct.mtd_info*, %struct.nand_chip*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

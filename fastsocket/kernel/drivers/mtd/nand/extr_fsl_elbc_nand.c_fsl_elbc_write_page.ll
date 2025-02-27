; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_write_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32*, %struct.fsl_elbc_mtd* }
%struct.fsl_elbc_mtd = type { %struct.fsl_elbc_ctrl* }
%struct.fsl_elbc_ctrl = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, %struct.nand_chip*, i32*)* @fsl_elbc_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_elbc_write_page(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fsl_elbc_mtd*, align 8
  %8 = alloca %struct.fsl_elbc_ctrl*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 1
  %11 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %10, align 8
  store %struct.fsl_elbc_mtd* %11, %struct.fsl_elbc_mtd** %7, align 8
  %12 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %7, align 8
  %13 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %12, i32 0, i32 0
  %14 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %13, align 8
  store %struct.fsl_elbc_ctrl* %14, %struct.fsl_elbc_ctrl** %8, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fsl_elbc_write_buf(%struct.mtd_info* %15, i32* %16, i32 %19)
  %21 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fsl_elbc_write_buf(%struct.mtd_info* %21, i32* %24, i32 %27)
  %29 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %8, align 8
  %33 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  ret void
}

declare dso_local i32 @fsl_elbc_write_buf(%struct.mtd_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

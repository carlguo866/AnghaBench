; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_buf_dma_pref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_buf_dma_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @omap_write_buf_dma_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_write_buf_dma_pref(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @omap_write_buf_pref(%struct.nand_chip* %16, i32* %17, i32 %18)
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @omap_nand_dma_transfer(%struct.mtd_info* %21, i32* %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %20, %15
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @omap_write_buf_pref(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @omap_nand_dma_transfer(%struct.mtd_info*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxic_nand_ctlr = type { i32 }

@MXIC_NFC_MAX_CLK_HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxic_nand_ctlr*, i64)* @mxic_nfc_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_nfc_set_freq(%struct.mxic_nand_ctlr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxic_nand_ctlr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mxic_nand_ctlr* %0, %struct.mxic_nand_ctlr** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MXIC_NFC_MAX_CLK_HZ, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @MXIC_NFC_MAX_CLK_HZ, align 8
  store i64 %11, i64* %5, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %4, align 8
  %14 = call i32 @mxic_nfc_clk_disable(%struct.mxic_nand_ctlr* %13)
  %15 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @mxic_nfc_clk_setup(%struct.mxic_nand_ctlr* %15, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %12
  %23 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %4, align 8
  %24 = call i32 @mxic_nfc_clk_enable(%struct.mxic_nand_ctlr* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @mxic_nfc_clk_disable(%struct.mxic_nand_ctlr*) #1

declare dso_local i32 @mxic_nfc_clk_setup(%struct.mxic_nand_ctlr*, i64) #1

declare dso_local i32 @mxic_nfc_clk_enable(%struct.mxic_nand_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

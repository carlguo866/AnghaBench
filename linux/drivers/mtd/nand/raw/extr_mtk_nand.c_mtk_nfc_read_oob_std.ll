; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_oob_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_oob_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @mtk_nfc_read_oob_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_read_oob_std(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @mtk_nfc_read_page_raw(%struct.nand_chip* %5, i32* null, i32 1, i32 %6)
  ret i32 %7
}

declare dso_local i32 @mtk_nfc_read_page_raw(%struct.nand_chip*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_irq_control_v1_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_irq_control_v1_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_nand_host = type { i32 }

@NFC_V1_V2_CONFIG1 = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG1_INT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxc_nand_host*, i32)* @irq_control_v1_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_control_v1_v2(%struct.mxc_nand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mxc_nand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxc_nand_host* %0, %struct.mxc_nand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @NFC_V1_V2_CONFIG1, align 4
  %7 = call i32 @readw(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @NFC_V1_V2_CONFIG1_INT_MSK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @NFC_V1_V2_CONFIG1_INT_MSK, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NFC_V1_V2_CONFIG1, align 4
  %22 = call i32 @writew(i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

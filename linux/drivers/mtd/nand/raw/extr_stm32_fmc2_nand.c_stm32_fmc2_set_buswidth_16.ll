; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_set_buswidth_16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_set_buswidth_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_fmc2_nfc = type { i64 }

@FMC2_PCR = common dso_local global i64 0, align 8
@FMC2_PCR_PWID_MASK = common dso_local global i32 0, align 4
@FMC2_PCR_PWID_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_fmc2_nfc*, i32)* @stm32_fmc2_set_buswidth_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_fmc2_set_buswidth_16(%struct.stm32_fmc2_nfc* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_fmc2_nfc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_fmc2_nfc* %0, %struct.stm32_fmc2_nfc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FMC2_PCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @FMC2_PCR_PWID_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @FMC2_PCR_PWID_BUSWIDTH_16, align 4
  %20 = call i32 @FMC2_PCR_PWID(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FMC2_PCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel_relaxed(i32 %24, i64 %29)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @FMC2_PCR_PWID(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

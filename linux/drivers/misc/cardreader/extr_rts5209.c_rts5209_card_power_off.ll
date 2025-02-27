; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_card_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5209.c_rts5209_card_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@SD_POWER_MASK = common dso_local global i32 0, align 4
@SD_POWER_OFF = common dso_local global i32 0, align 4
@PCR_MS_PMOS = common dso_local global i32 0, align 4
@RTSX_MS_CARD = common dso_local global i32 0, align 4
@MS_POWER_MASK = common dso_local global i32 0, align 4
@MS_POWER_OFF = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@PMOS_STRG_MASK = common dso_local global i32 0, align 4
@PMOS_STRG_400mA = common dso_local global i32 0, align 4
@PWR_GATE_CTRL = common dso_local global i32 0, align 4
@LDO3318_PWR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts5209_card_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5209_card_power_off(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SD_POWER_MASK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @SD_POWER_OFF, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %10 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCR_MS_PMOS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RTSX_MS_CARD, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @MS_POWER_MASK, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @MS_POWER_OFF, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %15, %2
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %24 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %23)
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %26 = load i32, i32* @WRITE_REG_CMD, align 4
  %27 = load i32, i32* @CARD_PWR_CTL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PMOS_STRG_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PMOS_STRG_400mA, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %25, i32 %26, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %36 = load i32, i32* @WRITE_REG_CMD, align 4
  %37 = load i32, i32* @PWR_GATE_CTRL, align 4
  %38 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %39 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %35, i32 %36, i32 %37, i32 %38, i32 6)
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %41 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %40, i32 100)
  ret i32 %41
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

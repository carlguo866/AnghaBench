; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_eeprom_acquire_semaphore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_eeprom_acquire_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@EEPROM_SEM_RETRY_LIMIT = common dso_local global i64 0, align 8
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM = common dso_local global i32 0, align 4
@EEPROM_SEM_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_eeprom_acquire_semaphore(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @EEPROM_SEM_RETRY_LIMIT, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %13 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM, align 4
  %14 = call i32 @il_set_bit(%struct.il_priv* %11, i32 %12, i32 %13)
  %15 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %16 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %17 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM, align 4
  %18 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM, align 4
  %19 = load i32, i32* @EEPROM_SEM_TIMEOUT, align 4
  %20 = call i32 @_il_poll_bit(%struct.il_priv* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %6

29:                                               ; preds = %6
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @il_set_bit(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

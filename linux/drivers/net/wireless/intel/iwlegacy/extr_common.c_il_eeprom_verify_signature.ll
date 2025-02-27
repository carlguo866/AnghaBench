; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_eeprom_verify_signature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_eeprom_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@CSR_EEPROM_GP = common dso_local global i32 0, align 4
@CSR_EEPROM_GP_VALID_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EEPROM signature=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"bad EEPROM signature,EEPROM_GP=0x%08x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il_eeprom_verify_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_eeprom_verify_signature(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %6 = load i32, i32* @CSR_EEPROM_GP, align 4
  %7 = call i32 @_il_rd(%struct.il_priv* %5, i32 %6)
  %8 = load i32, i32* @CSR_EEPROM_GP_VALID_MSK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @D_EEPROM(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %14 [
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %1, %1
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @IL_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @D_EEPROM(i8*, i32) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

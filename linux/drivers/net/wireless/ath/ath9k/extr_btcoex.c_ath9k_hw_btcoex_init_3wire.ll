; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_init_3wire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_init_3wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i32, i32 }

@AR_GPIO_INPUT_EN_VAL = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL_BT_PRIORITY_BB = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_EN_VAL_BT_ACTIVE_BB = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_MUX1 = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_MUX1_BT_ACTIVE = common dso_local global i32 0, align 4
@AR_GPIO_INPUT_MUX1_BT_PRIORITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ath9k-btactive\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ath9k-btpriority\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_init_3wire(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_btcoex_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  store %struct.ath_btcoex_hw* %5, %struct.ath_btcoex_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = load i32, i32* @AR_GPIO_INPUT_EN_VAL, align 4
  %8 = load i32, i32* @AR_GPIO_INPUT_EN_VAL_BT_PRIORITY_BB, align 4
  %9 = load i32, i32* @AR_GPIO_INPUT_EN_VAL_BT_ACTIVE_BB, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @REG_SET_BIT(%struct.ath_hw* %6, i32 %7, i32 %10)
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = call i32 @AR_SREV_SOC(%struct.ath_hw* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = load i32, i32* @AR_GPIO_INPUT_MUX1, align 4
  %18 = load i32, i32* @AR_GPIO_INPUT_MUX1_BT_ACTIVE, align 4
  %19 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %16, i32 %17, i32 %18, i32 %21)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_GPIO_INPUT_MUX1, align 4
  %25 = load i32, i32* @AR_GPIO_INPUT_MUX1_BT_PRIORITY, align 4
  %26 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %23, i32 %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %15, %1
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %33 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ath9k_hw_gpio_request_in(%struct.ath_hw* %31, i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %37 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ath9k_hw_gpio_request_in(%struct.ath_hw* %36, i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_SREV_SOC(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_gpio_request_in(%struct.ath_hw*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_tsf64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_set_tsf64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }

@AR5K_TSF_L32 = common dso_local global i32 0, align 4
@AR5K_TSF_U32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_set_tsf64(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AR5K_TSF_L32, align 4
  %8 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %5, i32 %6, i32 %7)
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 32
  %12 = load i32, i32* @AR5K_TSF_U32, align 4
  %13 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %9, i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

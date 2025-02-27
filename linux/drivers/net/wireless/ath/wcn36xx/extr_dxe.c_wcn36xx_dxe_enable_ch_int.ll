; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_enable_ch_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_enable_ch_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }

@WCN36XX_DXE_INT_MASK_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, i32)* @wcn36xx_dxe_enable_ch_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_dxe_enable_ch_int(%struct.wcn36xx* %0, i32 %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %7 = load i32, i32* @WCN36XX_DXE_INT_MASK_REG, align 4
  %8 = call i32 @wcn36xx_dxe_read_register(%struct.wcn36xx* %6, i32 %7, i32* %5)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %13 = load i32, i32* @WCN36XX_DXE_INT_MASK_REG, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %12, i32 %13, i32 %14)
  ret i32 0
}

declare dso_local i32 @wcn36xx_dxe_read_register(%struct.wcn36xx*, i32, i32*) #1

declare dso_local i32 @wcn36xx_dxe_write_register(%struct.wcn36xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

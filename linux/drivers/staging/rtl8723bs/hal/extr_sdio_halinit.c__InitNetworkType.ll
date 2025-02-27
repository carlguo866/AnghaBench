; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitNetworkType.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitNetworkType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_CR = common dso_local global i32 0, align 4
@MASK_NETTYPE = common dso_local global i32 0, align 4
@NT_LINK_AP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitNetworkType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitNetworkType(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = load i32, i32* @REG_CR, align 4
  %6 = call i32 @rtw_read32(%struct.adapter* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MASK_NETTYPE, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = load i32, i32* @NT_LINK_AP, align 4
  %12 = call i32 @_NETTYPE(i32 %11)
  %13 = or i32 %10, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = load i32, i32* @REG_CR, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @rtw_write32(%struct.adapter* %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

declare dso_local i32 @_NETTYPE(i32) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitTransferPageSize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__InitTransferPageSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@PBP_128 = common dso_local global i32 0, align 4
@REG_PBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_InitTransferPageSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_InitTransferPageSize(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load i32, i32* @PBP_128, align 4
  %5 = call i32 @_PSRX(i32 %4)
  %6 = load i32, i32* @PBP_128, align 4
  %7 = call i32 @_PSTX(i32 %6)
  %8 = or i32 %5, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = load i32, i32* @REG_PBP, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @rtw_write8(%struct.adapter* %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @_PSRX(i32) #1

declare dso_local i32 @_PSTX(i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

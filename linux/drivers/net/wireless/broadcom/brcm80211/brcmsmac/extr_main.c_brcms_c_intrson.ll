; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_intrson.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_intrson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i32, %struct.brcms_hardware* }
%struct.brcms_hardware = type { i32 }

@macintmask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_intrson(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.brcms_hardware*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %4 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %4, i32 0, i32 2
  %6 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  store %struct.brcms_hardware* %6, %struct.brcms_hardware** %3, align 8
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %11 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @macintmask, align 4
  %16 = call i32 @D11REGOFFS(i32 %15)
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bcma_write32(i32 %14, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

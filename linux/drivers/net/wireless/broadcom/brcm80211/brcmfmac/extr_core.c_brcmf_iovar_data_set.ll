; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_iovar_data_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_iovar_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_if** }
%struct.brcmf_if = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_iovar_data_set(%struct.device* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcmf_bus*, align 8
  %10 = alloca %struct.brcmf_if*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %11)
  store %struct.brcmf_bus* %12, %struct.brcmf_bus** %9, align 8
  %13 = load %struct.brcmf_bus*, %struct.brcmf_bus** %9, align 8
  %14 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.brcmf_if**, %struct.brcmf_if*** %16, align 8
  %18 = getelementptr inbounds %struct.brcmf_if*, %struct.brcmf_if** %17, i64 0
  %19 = load %struct.brcmf_if*, %struct.brcmf_if** %18, align 8
  store %struct.brcmf_if* %19, %struct.brcmf_if** %10, align 8
  %20 = load %struct.brcmf_if*, %struct.brcmf_if** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %20, i8* %21, i8* %22, i32 %23)
  ret i32 %24
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

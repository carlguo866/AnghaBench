; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_drvr_to_fws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_drvr_to_fws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_fws_info = type { i32 }
%struct.brcmf_pub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_bcdc* }
%struct.brcmf_bcdc = type { %struct.brcmf_fws_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.brcmf_fws_info* @drvr_to_fws(%struct.brcmf_pub* %0) #0 {
  %2 = alloca %struct.brcmf_pub*, align 8
  %3 = alloca %struct.brcmf_bcdc*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %2, align 8
  %4 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %5 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %7, align 8
  store %struct.brcmf_bcdc* %8, %struct.brcmf_bcdc** %3, align 8
  %9 = load %struct.brcmf_bcdc*, %struct.brcmf_bcdc** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_bcdc, %struct.brcmf_bcdc* %9, i32 0, i32 0
  %11 = load %struct.brcmf_fws_info*, %struct.brcmf_fws_info** %10, align 8
  ret %struct.brcmf_fws_info* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_scb_ampdu_update_config_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_scb_ampdu_update_config_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ampdu_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ampdu_info*)* @brcms_c_scb_ampdu_update_config_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_scb_ampdu_update_config_all(%struct.ampdu_info* %0) #0 {
  %2 = alloca %struct.ampdu_info*, align 8
  store %struct.ampdu_info* %0, %struct.ampdu_info** %2, align 8
  %3 = load %struct.ampdu_info*, %struct.ampdu_info** %2, align 8
  %4 = load %struct.ampdu_info*, %struct.ampdu_info** %2, align 8
  %5 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @brcms_c_scb_ampdu_update_config(%struct.ampdu_info* %3, i32* %7)
  ret void
}

declare dso_local i32 @brcms_c_scb_ampdu_update_config(%struct.ampdu_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

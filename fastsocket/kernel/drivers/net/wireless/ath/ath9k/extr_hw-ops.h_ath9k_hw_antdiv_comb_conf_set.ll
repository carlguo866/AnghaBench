; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw-ops.h_ath9k_hw_antdiv_comb_conf_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw-ops.h_ath9k_hw_antdiv_comb_conf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_antcomb_conf = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*, %struct.ath_hw_antcomb_conf*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath_hw_antcomb_conf*)* @ath9k_hw_antdiv_comb_conf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_antdiv_comb_conf_set(%struct.ath_hw* %0, %struct.ath_hw_antcomb_conf* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_hw_antcomb_conf*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_hw_antcomb_conf* %1, %struct.ath_hw_antcomb_conf** %4, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = call %struct.TYPE_2__* @ath9k_hw_ops(%struct.ath_hw* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.ath_hw*, %struct.ath_hw_antcomb_conf*)*, i32 (%struct.ath_hw*, %struct.ath_hw_antcomb_conf*)** %7, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %4, align 8
  %11 = call i32 %8(%struct.ath_hw* %9, %struct.ath_hw_antcomb_conf* %10)
  ret void
}

declare dso_local %struct.TYPE_2__* @ath9k_hw_ops(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

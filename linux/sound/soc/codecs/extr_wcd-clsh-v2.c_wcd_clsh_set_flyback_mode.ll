; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_clsh_set_flyback_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_clsh_set_flyback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@CLS_H_HIFI = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_RX_SUPPLIES = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_MASK = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_UHQA = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wcd_clsh_set_flyback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd_clsh_set_flyback_mode(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CLS_H_HIFI, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = load i32, i32* @WCD9XXX_A_ANA_RX_SUPPLIES, align 4
  %11 = load i32, i32* @WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_MASK, align 4
  %12 = load i32, i32* @WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_UHQA, align 4
  %13 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %9, i32 %10, i32 %11, i32 %12)
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = load i32, i32* @WCD9XXX_A_ANA_RX_SUPPLIES, align 4
  %17 = load i32, i32* @WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_MASK, align 4
  %18 = load i32, i32* @WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_DEFAULT, align 4
  %19 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %15, i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %8
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

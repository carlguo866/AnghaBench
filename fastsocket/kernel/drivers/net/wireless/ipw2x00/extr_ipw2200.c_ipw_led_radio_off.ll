; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_led_radio_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_led_radio_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_led_radio_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_led_radio_off(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %3 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %4 = call i32 @ipw_led_activity_off(%struct.ipw_priv* %3)
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = call i32 @ipw_led_link_off(%struct.ipw_priv* %5)
  ret void
}

declare dso_local i32 @ipw_led_activity_off(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_led_link_off(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

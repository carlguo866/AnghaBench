; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_hard_iface = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_bla_status_update(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.batadv_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.batadv_priv* %6, %struct.batadv_priv** %3, align 8
  %7 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %8 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %7)
  store %struct.batadv_hard_iface* %8, %struct.batadv_hard_iface** %4, align 8
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %10 = icmp ne %struct.batadv_hard_iface* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %14 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %15 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %16 = call i32 @batadv_bla_update_orig_address(%struct.batadv_priv* %13, %struct.batadv_hard_iface* %14, %struct.batadv_hard_iface* %15)
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %18 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %17)
  br label %19

19:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_bla_update_orig_address(%struct.batadv_priv*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

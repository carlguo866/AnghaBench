; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_phy_unlock(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 3
  %9 = zext i1 %8 to i32
  %10 = call i32 @B43_WARN_ON(i32 %9)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %15 = call i32 @b43_is_mode(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = call i32 @b43_power_saving_ctl_bits(%struct.b43_wldev* %18, i32 0)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_is_mode(i32, i32) #1

declare dso_local i32 @b43_power_saving_ctl_bits(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

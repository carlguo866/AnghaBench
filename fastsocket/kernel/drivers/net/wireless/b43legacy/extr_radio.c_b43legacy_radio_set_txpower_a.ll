; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_set_txpower_a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c_b43legacy_radio_set_txpower_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_radio_set_txpower_a(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %10, i32 0, i32 0
  store %struct.b43legacy_phy* %11, %struct.b43legacy_phy** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @clamp_val(i32 %12, i32 0, i32 63)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @b43legacy_get_txgain_freq_power_amp(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 5
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 224
  store i32 %19, i32* %6, align 4
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %20, i32 25, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @b43legacy_get_txgain_base_band(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 15
  store i32 %26, i32* %7, align 4
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, 32
  %30 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %27, i32 23, i32 %29)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %32 = call i32 @b43legacy_ilt_read(%struct.b43legacy_wldev* %31, i32 12289)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 7
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @b43legacy_get_txgain_dac(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 3
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @b43legacy_ilt_write(%struct.b43legacy_wldev* %42, i32 12289, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %47 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @b43legacy_get_txgain_freq_power_amp(i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_get_txgain_base_band(i32) #1

declare dso_local i32 @b43legacy_ilt_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_get_txgain_dac(i32) #1

declare dso_local i32 @b43legacy_ilt_write(%struct.b43legacy_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

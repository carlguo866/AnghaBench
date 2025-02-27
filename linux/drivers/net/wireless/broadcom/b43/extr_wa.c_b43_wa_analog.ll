; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_wa.c_b43_wa_analog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_wa.c_b43_wa_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_PHY_VERSION_OFDM = common dso_local global i32 0, align 4
@B43_PHYVER_VERSION = common dso_local global i32 0, align 4
@B43_PHY_PWRDOWN = common dso_local global i32 0, align 4
@B43_OFDMTAB_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wa_analog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wa_analog(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = load i32, i32* @B43_PHY_VERSION_OFDM, align 4
  %6 = call i32 @b43_phy_read(%struct.b43_wldev* %4, i32 %5)
  %7 = load i32, i32* @B43_PHYVER_VERSION, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = load i32, i32* @B43_PHY_PWRDOWN, align 4
  %14 = call i32 @b43_phy_write(%struct.b43_wldev* %12, i32 %13, i32 4096)
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* @B43_OFDMTAB_DAC, align 4
  %18 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %16, i32 %17, i32 3, i32 4164)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = load i32, i32* @B43_OFDMTAB_DAC, align 4
  %21 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %19, i32 %20, i32 4, i32 29185)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = load i32, i32* @B43_OFDMTAB_DAC, align 4
  %24 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %22, i32 %23, i32 6, i32 64)
  br label %25

25:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

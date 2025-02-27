; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_wd_linkstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_wd_linkstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i32, i32 }

@AB8500_USB = common dso_local global i32 0, align 4
@AB8500_USB_PHY_CTRL_REG = common dso_local global i32 0, align 4
@AB8500_V20_31952_DISABLE_DELAY_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_usb*, i32)* @ab8500_usb_wd_linkstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_usb_wd_linkstatus(%struct.ab8500_usb* %0, i32 %1) #0 {
  %3 = alloca %struct.ab8500_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.ab8500_usb* %0, %struct.ab8500_usb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %6 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @is_ab8500_2p0(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %12 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AB8500_USB, align 4
  %15 = load i32, i32* @AB8500_USB_PHY_CTRL_REG, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @abx500_mask_and_set_register_interruptible(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @AB8500_V20_31952_DISABLE_DELAY_US, align 4
  %20 = call i32 @udelay(i32 %19)
  br label %21

21:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @is_ab8500_2p0(i32) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

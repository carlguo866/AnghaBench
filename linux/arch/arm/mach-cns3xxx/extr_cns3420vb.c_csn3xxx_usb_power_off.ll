; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-cns3xxx/extr_cns3420vb.c_csn3xxx_usb_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-cns3xxx/extr_cns3420vb.c_csn3xxx_usb_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@usb_pwr_ref = common dso_local global i32 0, align 4
@PM_CLK_GATE_REG_OFFSET_USB_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @csn3xxx_usb_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csn3xxx_usb_power_off(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = call i64 @atomic_dec_return(i32* @usb_pwr_ref)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @PM_CLK_GATE_REG_OFFSET_USB_HOST, align 4
  %7 = shl i32 1, %6
  %8 = call i32 @cns3xxx_pwr_clk_dis(i32 %7)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @cns3xxx_pwr_clk_dis(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

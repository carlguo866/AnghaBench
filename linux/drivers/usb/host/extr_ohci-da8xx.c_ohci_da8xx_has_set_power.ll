; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_has_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_has_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.da8xx_ohci_hcd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_da8xx_has_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_da8xx_has_set_power(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.da8xx_ohci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %6 = call %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd* %5)
  store %struct.da8xx_ohci_hcd* %6, %struct.da8xx_ohci_hcd** %4, align 8
  %7 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %8 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

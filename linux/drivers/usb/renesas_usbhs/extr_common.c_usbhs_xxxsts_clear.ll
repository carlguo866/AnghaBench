; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_xxxsts_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_xxxsts_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }

@pipe_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_xxxsts_clear(%struct.usbhs_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %9 = load i32, i32* @pipe_size, align 4
  %10 = call i32 @usbhs_get_dparam(%struct.usbhs_priv* %8, i32 %9)
  %11 = call i32 @GENMASK(i32 %10, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @usbhs_write(%struct.usbhs_priv* %12, i32 %13, i32 %18)
  ret void
}

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @usbhs_get_dparam(%struct.usbhs_priv*, i32) #1

declare dso_local i32 @usbhs_write(%struct.usbhs_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

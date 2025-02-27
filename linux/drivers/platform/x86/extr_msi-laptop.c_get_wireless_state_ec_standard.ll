; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_get_wireless_state_ec_standard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_get_wireless_state_ec_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSI_STANDARD_EC_COMMAND_ADDRESS = common dso_local global i32 0, align 4
@MSI_STANDARD_EC_WLAN_MASK = common dso_local global i32 0, align 4
@wlan_s = common dso_local global i32 0, align 4
@MSI_STANDARD_EC_BLUETOOTH_MASK = common dso_local global i32 0, align 4
@bluetooth_s = common dso_local global i32 0, align 4
@MSI_STANDARD_EC_3G_MASK = common dso_local global i32 0, align 4
@threeg_s = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_wireless_state_ec_standard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_wireless_state_ec_standard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MSI_STANDARD_EC_COMMAND_ADDRESS, align 4
  %5 = call i32 @ec_read(i32 %4, i32* %2)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %1, align 4
  br label %32

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @MSI_STANDARD_EC_WLAN_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @wlan_s, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @MSI_STANDARD_EC_BLUETOOTH_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* @bluetooth_s, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @MSI_STANDARD_EC_3G_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* @threeg_s, align 4
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %10, %8
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @ec_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

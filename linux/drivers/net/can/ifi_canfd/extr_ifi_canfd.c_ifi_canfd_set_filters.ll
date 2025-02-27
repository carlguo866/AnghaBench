; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_set_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_set_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@IFI_CANFD_FILTER_MASK_VALID = common dso_local global i32 0, align 4
@IFI_CANFD_FILTER_MASK_EXT = common dso_local global i32 0, align 4
@IFI_CANFD_FILTER_IDENT_VALID = common dso_local global i32 0, align 4
@IFI_CANFD_FILTER_IDENT_IDE = common dso_local global i32 0, align 4
@IFI_CANFD_FILTER_MASK_EDL = common dso_local global i32 0, align 4
@IFI_CANFD_FILTER_IDENT_CANFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ifi_canfd_set_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifi_canfd_set_filters(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = load i32, i32* @IFI_CANFD_FILTER_MASK_VALID, align 4
  %5 = load i32, i32* @IFI_CANFD_FILTER_MASK_EXT, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @IFI_CANFD_FILTER_IDENT_VALID, align 4
  %8 = call i32 @ifi_canfd_set_filter(%struct.net_device* %3, i32 0, i32 %6, i32 %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @IFI_CANFD_FILTER_MASK_VALID, align 4
  %11 = load i32, i32* @IFI_CANFD_FILTER_MASK_EXT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IFI_CANFD_FILTER_IDENT_VALID, align 4
  %14 = load i32, i32* @IFI_CANFD_FILTER_IDENT_IDE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ifi_canfd_set_filter(%struct.net_device* %9, i32 1, i32 %12, i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i32, i32* @IFI_CANFD_FILTER_MASK_VALID, align 4
  %19 = load i32, i32* @IFI_CANFD_FILTER_MASK_EDL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IFI_CANFD_FILTER_MASK_EXT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IFI_CANFD_FILTER_IDENT_VALID, align 4
  %24 = load i32, i32* @IFI_CANFD_FILTER_IDENT_CANFD, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IFI_CANFD_FILTER_IDENT_IDE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ifi_canfd_set_filter(%struct.net_device* %17, i32 2, i32 %22, i32 %27)
  ret void
}

declare dso_local i32 @ifi_canfd_set_filter(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

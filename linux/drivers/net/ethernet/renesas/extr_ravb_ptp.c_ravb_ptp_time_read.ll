; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_time_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_ptp.c_ravb_ptp_time_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ravb_private = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.timespec64 = type { i32, i32 }

@GCCR_TCR_CAPTURE = common dso_local global i32 0, align 4
@GCT0 = common dso_local global i32 0, align 4
@GCT1 = common dso_local global i32 0, align 4
@GCT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ravb_private*, %struct.timespec64*)* @ravb_ptp_time_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_ptp_time_read(%struct.ravb_private* %0, %struct.timespec64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ravb_private*, align 8
  %5 = alloca %struct.timespec64*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ravb_private* %0, %struct.ravb_private** %4, align 8
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  %8 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %9 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %12 = load i32, i32* @GCCR_TCR_CAPTURE, align 4
  %13 = call i32 @ravb_ptp_tcr_request(%struct.ravb_private* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = load i32, i32* @GCT0, align 4
  %21 = call i32 @ravb_read(%struct.net_device* %19, i32 %20)
  %22 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %23 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = load i32, i32* @GCT1, align 4
  %26 = call i32 @ravb_read(%struct.net_device* %24, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = load i32, i32* @GCT2, align 4
  %29 = call i32 @ravb_read(%struct.net_device* %27, i32 %28)
  %30 = shl i32 %29, 32
  %31 = or i32 %26, %30
  %32 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %33 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %18, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ravb_ptp_tcr_request(%struct.ravb_private*, i32) #1

declare dso_local i32 @ravb_read(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

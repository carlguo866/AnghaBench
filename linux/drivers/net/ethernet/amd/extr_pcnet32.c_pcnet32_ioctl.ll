; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.pcnet32_private = type { i32, i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @pcnet32_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcnet32_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %10)
  store %struct.pcnet32_private* %11, %struct.pcnet32_private** %7, align 8
  %12 = load %struct.pcnet32_private*, %struct.pcnet32_private** %7, align 8
  %13 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.pcnet32_private*, %struct.pcnet32_private** %7, align 8
  %18 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pcnet32_private*, %struct.pcnet32_private** %7, align 8
  %22 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %21, i32 0, i32 1
  %23 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %24 = call i32 @if_mii(%struct.ifreq* %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @generic_mii_ioctl(i32* %22, i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.pcnet32_private*, %struct.pcnet32_private** %7, align 8
  %28 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %27, i32 0, i32 0
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %16
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @generic_mii_ioctl(i32*, i32, i32, i32*) #1

declare dso_local i32 @if_mii(%struct.ifreq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

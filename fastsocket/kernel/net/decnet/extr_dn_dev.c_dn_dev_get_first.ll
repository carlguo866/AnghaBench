; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_get_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_dev_get_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.dn_dev = type { %struct.dn_ifaddr* }
%struct.dn_ifaddr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @dn_dev_get_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_dev_get_first(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dn_dev*, align 8
  %6 = alloca %struct.dn_ifaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dn_dev*
  store %struct.dn_dev* %11, %struct.dn_dev** %5, align 8
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.dn_dev*, %struct.dn_dev** %5, align 8
  %15 = icmp eq %struct.dn_dev* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.dn_dev*, %struct.dn_dev** %5, align 8
  %19 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %18, i32 0, i32 0
  %20 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %19, align 8
  store %struct.dn_ifaddr* %20, %struct.dn_ifaddr** %6, align 8
  %21 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %6, align 8
  %22 = icmp ne %struct.dn_ifaddr* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %6, align 8
  %25 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %17
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

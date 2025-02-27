; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_resume(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = call i32 @be_setup(%struct.be_adapter* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = call i32 (...) @rtnl_lock()
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i64 @netif_running(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @be_open(%struct.net_device* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = call i32 (...) @rtnl_unlock()
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @netif_device_attach(%struct.net_device* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %27, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @be_setup(%struct.be_adapter*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @be_open(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_module.c_rtllib_networks_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_module.c_rtllib_networks_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64 }

@MAX_NETWORK_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*)* @rtllib_networks_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_networks_allocate(%struct.rtllib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtllib_device*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  %4 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %5 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @MAX_NETWORK_COUNT, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64 @kcalloc(i32 %10, i32 4, i32 %11)
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %14 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %16 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %19, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

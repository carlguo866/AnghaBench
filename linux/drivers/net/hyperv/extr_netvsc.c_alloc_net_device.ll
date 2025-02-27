; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_alloc_net_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_alloc_net_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RNDIS_MAX_PKT_DEFAULT = common dso_local global i32 0, align 4
@RNDIS_PKT_ALIGN_DEFAULT = common dso_local global i32 0, align 4
@netvsc_subchan_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netvsc_device* ()* @alloc_net_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netvsc_device* @alloc_net_device() #0 {
  %1 = alloca %struct.netvsc_device*, align 8
  %2 = alloca %struct.netvsc_device*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.netvsc_device* @kzalloc(i32 32, i32 %3)
  store %struct.netvsc_device* %4, %struct.netvsc_device** %2, align 8
  %5 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  %6 = icmp ne %struct.netvsc_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.netvsc_device* null, %struct.netvsc_device** %1, align 8
  br label %33

8:                                                ; preds = %0
  %9 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  %10 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %9, i32 0, i32 7
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  %13 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  %15 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @RNDIS_MAX_PKT_DEFAULT, align 4
  %17 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  %18 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @RNDIS_PKT_ALIGN_DEFAULT, align 4
  %20 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  %21 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  %23 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %22, i32 0, i32 4
  %24 = call i32 @init_completion(i32* %23)
  %25 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  %26 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %25, i32 0, i32 3
  %27 = call i32 @init_waitqueue_head(i32* %26)
  %28 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  %29 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %28, i32 0, i32 2
  %30 = load i32, i32* @netvsc_subchan_work, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.netvsc_device*, %struct.netvsc_device** %2, align 8
  store %struct.netvsc_device* %32, %struct.netvsc_device** %1, align 8
  br label %33

33:                                               ; preds = %8, %7
  %34 = load %struct.netvsc_device*, %struct.netvsc_device** %1, align 8
  ret %struct.netvsc_device* %34
}

declare dso_local %struct.netvsc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

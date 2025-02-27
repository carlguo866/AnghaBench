; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tbnet = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tbnet_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tbnet*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.tbnet* @netdev_priv(%struct.net_device* %4)
  store %struct.tbnet* %5, %struct.tbnet** %3, align 8
  %6 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %7 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %6, i32 0, i32 3
  %8 = call i32 @napi_disable(i32* %7)
  %9 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %10 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %9, i32 0, i32 2
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %13 = call i32 @tbnet_tear_down(%struct.tbnet* %12, i32 1)
  %14 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %15 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @tb_ring_free(i32* %17)
  %19 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %20 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %23 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @tb_ring_free(i32* %25)
  %27 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %28 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  ret i32 0
}

declare dso_local %struct.tbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @tbnet_tear_down(%struct.tbnet*, i32) #1

declare dso_local i32 @tb_ring_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_ssb_gpio_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_ssb_gpio_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.b43_wldev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.ssb_device* }
%struct.TYPE_7__ = type { %struct.ssb_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ssb_device* (%struct.b43_wldev*)* @b43_ssb_gpio_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ssb_device* @b43_ssb_gpio_dev(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %9, align 8
  store %struct.ssb_bus* %10, %struct.ssb_bus** %3, align 8
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.ssb_device*, %struct.ssb_device** %13, align 8
  ret %struct.ssb_device* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

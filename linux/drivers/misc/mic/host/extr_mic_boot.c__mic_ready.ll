; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c__mic_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c__mic_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { i32 }
%struct.mic_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mic_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cosm_device*)* @_mic_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mic_ready(%struct.cosm_device* %0) #0 {
  %2 = alloca %struct.cosm_device*, align 8
  %3 = alloca %struct.mic_device*, align 8
  store %struct.cosm_device* %0, %struct.cosm_device** %2, align 8
  %4 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %5 = call %struct.mic_device* @cosmdev_to_mdev(%struct.cosm_device* %4)
  store %struct.mic_device* %5, %struct.mic_device** %3, align 8
  %6 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %7 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.mic_device*)*, i32 (%struct.mic_device*)** %9, align 8
  %11 = load %struct.mic_device*, %struct.mic_device** %3, align 8
  %12 = call i32 %10(%struct.mic_device* %11)
  ret i32 %12
}

declare dso_local %struct.mic_device* @cosmdev_to_mdev(%struct.cosm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

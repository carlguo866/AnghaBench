; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_sysfs_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_sysfs_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@platform_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_laptop*)* @samsung_sysfs_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_sysfs_exit(%struct.samsung_laptop* %0) #0 {
  %2 = alloca %struct.samsung_laptop*, align 8
  %3 = alloca %struct.platform_device*, align 8
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %2, align 8
  %4 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %5 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %4, i32 0, i32 0
  %6 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @sysfs_remove_group(i32* %9, i32* @platform_attribute_group)
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

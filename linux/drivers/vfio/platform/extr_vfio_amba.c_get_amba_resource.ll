; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_amba.c_get_amba_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_amba.c_get_amba_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.vfio_platform_device = type { i64 }
%struct.amba_device = type { %struct.resource }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.vfio_platform_device*, i32)* @get_amba_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @get_amba_resource(%struct.vfio_platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.vfio_platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amba_device*, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.amba_device*
  store %struct.amba_device* %10, %struct.amba_device** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.amba_device*, %struct.amba_device** %6, align 8
  %15 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %14, i32 0, i32 0
  store %struct.resource* %15, %struct.resource** %3, align 8
  br label %17

16:                                               ; preds = %2
  store %struct.resource* null, %struct.resource** %3, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

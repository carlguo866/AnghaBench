; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_async_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_async_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nd_async_device_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd_async_device_unregister(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.device*
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = call i32 @nvdimm_bus_lock(%struct.device* %8)
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 @nvdimm_bus_unlock(%struct.device* %10)
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @device_unregister(%struct.device* %12)
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @put_device(%struct.device* %14)
  ret void
}

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

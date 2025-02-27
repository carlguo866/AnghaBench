; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i8*)* @dispc_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_free_irq(%struct.dispc_device* %0, i8* %1) #0 {
  %3 = alloca %struct.dispc_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %6 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %10 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %13 = call i32 @devm_free_irq(i32* %8, i32 %11, %struct.dispc_device* %12)
  %14 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %15 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.dispc_device*, %struct.dispc_device** %3, align 8
  %17 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  ret void
}

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.dispc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

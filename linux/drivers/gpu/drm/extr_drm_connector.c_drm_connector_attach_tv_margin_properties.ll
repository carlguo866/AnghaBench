; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_tv_margin_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_tv_margin_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_connector_attach_tv_margin_properties(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %4, i32 0, i32 1
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @drm_object_attach_property(i32* %8, i32 %12, i32 0)
  %14 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @drm_object_attach_property(i32* %15, i32 %19, i32 0)
  %21 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @drm_object_attach_property(i32* %22, i32 %26, i32 0)
  %28 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @drm_object_attach_property(i32* %29, i32 %33, i32 0)
  ret void
}

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

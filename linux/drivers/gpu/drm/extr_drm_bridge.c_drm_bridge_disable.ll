; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bridge.c_drm_bridge_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.TYPE_2__*, %struct.drm_bridge* }
%struct.TYPE_2__ = type { i32 (%struct.drm_bridge*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_bridge_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %3 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %4 = icmp ne %struct.drm_bridge* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %24

6:                                                ; preds = %1
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %8 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %7, i32 0, i32 1
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %8, align 8
  call void @drm_bridge_disable(%struct.drm_bridge* %9)
  %10 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %11 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %13, align 8
  %15 = icmp ne i32 (%struct.drm_bridge*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %6
  %17 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %18 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.drm_bridge*)*, i32 (%struct.drm_bridge*)** %20, align 8
  %22 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %23 = call i32 %21(%struct.drm_bridge* %22)
  br label %24

24:                                               ; preds = %5, %16, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

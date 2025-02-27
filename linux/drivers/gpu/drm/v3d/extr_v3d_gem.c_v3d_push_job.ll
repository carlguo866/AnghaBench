; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_push_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_push_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_file_priv = type { i32* }
%struct.v3d_job = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3d_file_priv*, %struct.v3d_job*, i32)* @v3d_push_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_push_job(%struct.v3d_file_priv* %0, %struct.v3d_job* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v3d_file_priv*, align 8
  %6 = alloca %struct.v3d_job*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v3d_file_priv* %0, %struct.v3d_file_priv** %5, align 8
  store %struct.v3d_job* %1, %struct.v3d_job** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.v3d_job*, %struct.v3d_job** %6, align 8
  %10 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %9, i32 0, i32 0
  %11 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %5, align 8
  %12 = getelementptr inbounds %struct.v3d_file_priv, %struct.v3d_file_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %5, align 8
  %18 = call i32 @drm_sched_job_init(%struct.TYPE_5__* %10, i32* %16, %struct.v3d_file_priv* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %44

23:                                               ; preds = %3
  %24 = load %struct.v3d_job*, %struct.v3d_job** %6, align 8
  %25 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @dma_fence_get(i32* %28)
  %30 = load %struct.v3d_job*, %struct.v3d_job** %6, align 8
  %31 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.v3d_job*, %struct.v3d_job** %6, align 8
  %33 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %32, i32 0, i32 1
  %34 = call i32 @kref_get(i32* %33)
  %35 = load %struct.v3d_job*, %struct.v3d_job** %6, align 8
  %36 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %35, i32 0, i32 0
  %37 = load %struct.v3d_file_priv*, %struct.v3d_file_priv** %5, align 8
  %38 = getelementptr inbounds %struct.v3d_file_priv, %struct.v3d_file_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @drm_sched_entity_push_job(%struct.TYPE_5__* %36, i32* %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %23, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @drm_sched_job_init(%struct.TYPE_5__*, i32*, %struct.v3d_file_priv*) #1

declare dso_local i32 @dma_fence_get(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @drm_sched_entity_push_job(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

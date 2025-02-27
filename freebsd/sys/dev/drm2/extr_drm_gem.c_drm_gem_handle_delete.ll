; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_handle_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_handle_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_gem_object*, %struct.drm_file*)* }
%struct.drm_gem_object = type { %struct.drm_device* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_handle_delete(%struct.drm_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %9 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.drm_gem_object* @drm_gem_names_remove(i32* %9, i32 %10)
  store %struct.drm_gem_object* %11, %struct.drm_gem_object** %7, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %13 = icmp eq %struct.drm_gem_object* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %19 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %6, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %24, align 8
  %26 = icmp ne i32 (%struct.drm_gem_object*, %struct.drm_file*)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.drm_gem_object*, %struct.drm_file*)*, i32 (%struct.drm_gem_object*, %struct.drm_file*)** %31, align 8
  %33 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %34 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %35 = call i32 %32(%struct.drm_gem_object* %33, %struct.drm_file* %34)
  br label %36

36:                                               ; preds = %27, %17
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %38 = call i32 @drm_gem_object_handle_unreference_unlocked(%struct.drm_gem_object* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.drm_gem_object* @drm_gem_names_remove(i32*, i32) #1

declare dso_local i32 @drm_gem_object_handle_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_blend.c_drm_plane_create_zpos_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_blend.c_drm_plane_create_zpos_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__*, %struct.drm_property*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_property = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"zpos\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_plane_create_zpos_property(%struct.drm_plane* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_property*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.drm_property* @drm_property_create_range(i32 %13, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  store %struct.drm_property* %16, %struct.drm_property** %10, align 8
  %17 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %18 = icmp ne %struct.drm_property* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %24 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %23, i32 0, i32 2
  %25 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @drm_object_attach_property(i32* %24, %struct.drm_property* %25, i32 %26)
  %28 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %29 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %30 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %29, i32 0, i32 1
  store %struct.drm_property* %28, %struct.drm_property** %30, align 8
  %31 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %32 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %38 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %43 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %35, %22
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.drm_property* @drm_property_create_range(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, %struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.csis_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @s5pcsis_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pcsis_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.csis_state*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.csis_state* @sd_to_csis_state(%struct.v4l2_subdev* %10)
  store %struct.csis_state* %11, %struct.csis_state** %8, align 8
  %12 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %13 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %14 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.v4l2_mbus_framefmt* @__s5pcsis_get_format(%struct.csis_state* %12, %struct.v4l2_subdev_pad_config* %13, i32 %16)
  store %struct.v4l2_mbus_framefmt* %17, %struct.v4l2_mbus_framefmt** %9, align 8
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %19 = icmp ne %struct.v4l2_mbus_framefmt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %25 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %27, i32 0, i32 0
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %30 = bitcast %struct.v4l2_mbus_framefmt* %28 to i8*
  %31 = bitcast %struct.v4l2_mbus_framefmt* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.csis_state*, %struct.csis_state** %8, align 8
  %33 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.csis_state* @sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__s5pcsis_get_format(%struct.csis_state*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

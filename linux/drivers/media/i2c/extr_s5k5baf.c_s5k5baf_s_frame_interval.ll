; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i32 }
%struct.s5k5baf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @s5k5baf_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.s5k5baf*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev* %6)
  store %struct.s5k5baf* %7, %struct.s5k5baf** %5, align 8
  %8 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %9 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %12 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %13 = call i32 @s5k5baf_set_frame_interval(%struct.s5k5baf* %11, %struct.v4l2_subdev_frame_interval* %12)
  %14 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %15 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  ret i32 0
}

declare dso_local %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s5k5baf_set_frame_interval(%struct.s5k5baf*, %struct.v4l2_subdev_frame_interval*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

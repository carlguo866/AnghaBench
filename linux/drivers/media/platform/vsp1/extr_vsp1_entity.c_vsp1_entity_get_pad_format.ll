; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_get_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_get_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32 }
%struct.vsp1_entity = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.vsp1_entity* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2) #0 {
  %4 = alloca %struct.vsp1_entity*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vsp1_entity*, %struct.vsp1_entity** %4, align 8
  %8 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %7, i32 0, i32 0
  %9 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32* %8, %struct.v4l2_subdev_pad_config* %9, i32 %10)
  ret %struct.v4l2_mbus_framefmt* %11
}

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

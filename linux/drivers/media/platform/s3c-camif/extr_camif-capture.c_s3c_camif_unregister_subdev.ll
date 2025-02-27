; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_unregister_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_unregister_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c_camif_unregister_subdev(%struct.camif_dev* %0) #0 {
  %2 = alloca %struct.camif_dev*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  store %struct.camif_dev* %0, %struct.camif_dev** %2, align 8
  %4 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %5 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %4, i32 0, i32 1
  store %struct.v4l2_subdev* %5, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call i32* @v4l2_get_subdevdata(%struct.v4l2_subdev* %6)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %11)
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 0
  %15 = call i32 @media_entity_cleanup(i32* %14)
  %16 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %17 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %16, i32 0, i32 0
  %18 = call i32 @v4l2_ctrl_handler_free(i32* %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %19, i32* null)
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

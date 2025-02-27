; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_get_video_aspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_get_video_aspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32*, i64, i32* }

@TPG_VIDEO_ASPECT_IMAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_get_video_aspect(%struct.vivid_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vivid_dev*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  %4 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %5 = call i64 @vivid_is_sdtv_cap(%struct.vivid_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %18 = call i64 @vivid_is_hdmi_cap(%struct.vivid_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %25 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %16
  %30 = load i32, i32* @TPG_VIDEO_ASPECT_IMAGE, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %20, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

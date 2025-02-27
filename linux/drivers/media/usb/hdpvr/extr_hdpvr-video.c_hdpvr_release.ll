; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.hdpvr_device = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @hdpvr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.hdpvr_device*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %4)
  store %struct.hdpvr_device* %5, %struct.hdpvr_device** %3, align 8
  %6 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %7 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %13 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %18 = call i32 @hdpvr_stop_streaming(%struct.hdpvr_device* %17)
  %19 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %20 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %23 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.file*, %struct.file** %2, align 8
  %26 = call i32 @v4l2_fh_release(%struct.file* %25)
  ret i32 %26
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdpvr_stop_streaming(%struct.hdpvr_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

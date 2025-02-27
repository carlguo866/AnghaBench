; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_encoder_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_vidioc_encoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { i32, i32 }
%struct.v4l2_encoder_cmd = type { i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported encoder cmd %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* @vidioc_encoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_encoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_encoder_cmd* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_encoder_cmd*, align 8
  %7 = alloca %struct.hdpvr_fh*, align 8
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_encoder_cmd* %2, %struct.v4l2_encoder_cmd** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %11, align 8
  store %struct.hdpvr_fh* %12, %struct.hdpvr_fh** %7, align 8
  %13 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %7, align 8
  %14 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %13, i32 0, i32 0
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %14, align 8
  store %struct.hdpvr_device* %15, %struct.hdpvr_device** %8, align 8
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %17 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %19, i32 0, i32 2
  %21 = call i32 @memset(i32* %20, i32 0, i32 4)
  %22 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %33 [
    i32 129, label %25
    i32 128, label %30
  ]

25:                                               ; preds = %3
  %26 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %29 = call i32 @hdpvr_start_streaming(%struct.hdpvr_device* %28)
  store i32 %29, i32* %9, align 4
  br label %44

30:                                               ; preds = %3
  %31 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %32 = call i32 @hdpvr_stop_streaming(%struct.hdpvr_device* %31)
  store i32 %32, i32* %9, align 4
  br label %44

33:                                               ; preds = %3
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = load i32, i32* @hdpvr_debug, align 4
  %36 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %37 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %36, i32 0, i32 1
  %38 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @v4l2_dbg(i32 %34, i32 %35, i32* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %33, %30, %25
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hdpvr_start_streaming(%struct.hdpvr_device*) #1

declare dso_local i32 @hdpvr_stop_streaming(%struct.hdpvr_device*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

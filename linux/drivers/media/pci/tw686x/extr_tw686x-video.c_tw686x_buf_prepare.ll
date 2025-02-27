; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.tw686x_video_channel = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @tw686x_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.tw686x_video_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.tw686x_video_channel* @vb2_get_drv_priv(i32 %8)
  store %struct.tw686x_video_channel* %9, %struct.tw686x_video_channel** %4, align 8
  %10 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %11 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %14 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %4, align 8
  %18 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %16, %21
  %23 = ashr i32 %22, 3
  store i32 %23, i32* %5, align 4
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %25 = call i32 @vb2_plane_size(%struct.vb2_buffer* %24, i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %32, i32 0, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.tw686x_video_channel* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

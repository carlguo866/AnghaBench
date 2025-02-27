; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.videobuf_queue = type { %struct.vpif_fh* }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@config_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @vpif_buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_buffer_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %12 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %11, i32 0, i32 0
  %13 = load %struct.vpif_fh*, %struct.vpif_fh** %12, align 8
  store %struct.vpif_fh* %13, %struct.vpif_fh** %8, align 8
  %14 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %15 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %14, i32 0, i32 0
  %16 = load %struct.channel_obj*, %struct.channel_obj** %15, align 8
  store %struct.channel_obj* %16, %struct.channel_obj** %9, align 8
  %17 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %18 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %17, i32 0, i32 1
  %19 = load %struct.common_obj*, %struct.common_obj** %18, align 8
  %20 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %19, i64 %20
  store %struct.common_obj* %21, %struct.common_obj** %10, align 8
  %22 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %23 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %24 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

28:                                               ; preds = %3
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 0), align 8
  %30 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %31 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 1), align 8
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 1), align 8
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %28
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

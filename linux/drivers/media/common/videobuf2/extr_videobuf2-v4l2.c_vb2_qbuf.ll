; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_qbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.media_device = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.media_request = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"file io in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_qbuf(%struct.vb2_queue* %0, %struct.media_device* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.media_device*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.media_request*, align 8
  %9 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %5, align 8
  store %struct.media_device* %1, %struct.media_device** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  store %struct.media_request* null, %struct.media_request** %8, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %11 = call i64 @vb2_fileio_is_active(%struct.vb2_queue* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %19 = load %struct.media_device*, %struct.media_device** %6, align 8
  %20 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %21 = call i32 @vb2_queue_or_prepare_buf(%struct.vb2_queue* %18, %struct.media_device* %19, %struct.v4l2_buffer* %20, i32 0, %struct.media_request** %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %28 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %32 = load %struct.media_request*, %struct.media_request** %8, align 8
  %33 = call i32 @vb2_core_qbuf(%struct.vb2_queue* %27, i32 %30, %struct.v4l2_buffer* %31, %struct.media_request* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.media_request*, %struct.media_request** %8, align 8
  %35 = icmp ne %struct.media_request* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.media_request*, %struct.media_request** %8, align 8
  %38 = call i32 @media_request_put(%struct.media_request* %37)
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %24, %13
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @vb2_fileio_is_active(%struct.vb2_queue*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @vb2_queue_or_prepare_buf(%struct.vb2_queue*, %struct.media_device*, %struct.v4l2_buffer*, i32, %struct.media_request**) #1

declare dso_local i32 @vb2_core_qbuf(%struct.vb2_queue*, i32, %struct.v4l2_buffer*, %struct.media_request*) #1

declare dso_local i32 @media_request_put(%struct.media_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

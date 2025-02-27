; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c___uvc_query_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c___uvc_query_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_buffer = type { i32, i64, i32 }
%struct.v4l2_buffer = type { i32 }

@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_buffer*, %struct.v4l2_buffer*)* @__uvc_query_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__uvc_query_buffer(%struct.uvc_buffer* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca %struct.uvc_buffer*, align 8
  %4 = alloca %struct.v4l2_buffer*, align 8
  store %struct.uvc_buffer* %0, %struct.uvc_buffer** %3, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %4, align 8
  %5 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %6 = load %struct.uvc_buffer*, %struct.uvc_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %6, i32 0, i32 2
  %8 = call i32 @memcpy(%struct.v4l2_buffer* %5, i32* %7, i32 4)
  %9 = load %struct.uvc_buffer*, %struct.uvc_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %15 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.uvc_buffer*, %struct.uvc_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %36 [
    i32 131, label %23
    i32 132, label %23
    i32 129, label %29
    i32 133, label %29
    i32 128, label %29
    i32 130, label %35
  ]

23:                                               ; preds = %19, %19
  %24 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %25 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %37

29:                                               ; preds = %19, %19, %19
  %30 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %37

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %19, %35
  br label %37

37:                                               ; preds = %36, %29, %23
  ret void
}

declare dso_local i32 @memcpy(%struct.v4l2_buffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

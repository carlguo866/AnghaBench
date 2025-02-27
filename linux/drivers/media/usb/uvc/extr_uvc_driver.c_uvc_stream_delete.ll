; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_stream_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_driver.c_uvc_stream_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.TYPE_2__, %struct.uvc_streaming*, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.uvc_streaming* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_streaming*)* @uvc_stream_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_stream_delete(%struct.uvc_streaming* %0) #0 {
  %2 = alloca %struct.uvc_streaming*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %2, align 8
  %3 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %4 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %9 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @destroy_workqueue(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %14 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %13, i32 0, i32 3
  %15 = call i32 @mutex_destroy(i32* %14)
  %16 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %17 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @usb_put_intf(i32 %18)
  %20 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %21 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %20, i32 0, i32 1
  %22 = load %struct.uvc_streaming*, %struct.uvc_streaming** %21, align 8
  %23 = call i32 @kfree(%struct.uvc_streaming* %22)
  %24 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %25 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.uvc_streaming*, %struct.uvc_streaming** %26, align 8
  %28 = call i32 @kfree(%struct.uvc_streaming* %27)
  %29 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %30 = call i32 @kfree(%struct.uvc_streaming* %29)
  ret void
}

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @usb_put_intf(i32) #1

declare dso_local i32 @kfree(%struct.uvc_streaming*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

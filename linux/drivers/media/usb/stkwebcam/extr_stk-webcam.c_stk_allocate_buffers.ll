; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_allocate_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_allocate_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*, i32)* @stk_allocate_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_allocate_buffers(%struct.stk_camera* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk_camera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %8 = call i32 @stk_prepare_iso(%struct.stk_camera* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %13 = call i32 @stk_clean_iso(%struct.stk_camera* %12)
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @stk_prepare_sio_buffers(%struct.stk_camera* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %23 = call i32 @stk_free_sio_buffers(%struct.stk_camera* %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %21, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @stk_prepare_iso(%struct.stk_camera*) #1

declare dso_local i32 @stk_clean_iso(%struct.stk_camera*) #1

declare dso_local i32 @stk_prepare_sio_buffers(%struct.stk_camera*, i32) #1

declare dso_local i32 @stk_free_sio_buffers(%struct.stk_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

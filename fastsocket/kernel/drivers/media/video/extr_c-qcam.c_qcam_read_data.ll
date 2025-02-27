; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_c-qcam.c_qcam_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_c-qcam.c_qcam_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcam_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcam_device*)* @qcam_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcam_read_data(%struct.qcam_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcam_device*, align 8
  %4 = alloca i32, align 4
  store %struct.qcam_device* %0, %struct.qcam_device** %3, align 8
  %5 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %6 = call i32 @qcam_set_ack(%struct.qcam_device* %5, i32 0)
  %7 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %8 = call i64 @qcam_await_ready1(%struct.qcam_device* %7, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %13 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @parport_read_status(i32 %14)
  %16 = and i32 %15, 240
  store i32 %16, i32* %4, align 4
  %17 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %18 = call i32 @qcam_set_ack(%struct.qcam_device* %17, i32 1)
  %19 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %20 = call i64 @qcam_await_ready1(%struct.qcam_device* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %32

23:                                               ; preds = %11
  %24 = load %struct.qcam_device*, %struct.qcam_device** %3, align 8
  %25 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @parport_read_status(i32 %26)
  %28 = ashr i32 %27, 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %23, %22, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @qcam_set_ack(%struct.qcam_device*, i32) #1

declare dso_local i64 @qcam_await_ready1(%struct.qcam_device*, i32) #1

declare dso_local i32 @parport_read_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

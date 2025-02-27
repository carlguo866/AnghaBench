; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_set_compression.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zc0301/extr_zc0301_core.c_zc0301_set_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zc0301_device = type { i32 }
%struct.v4l2_jpegcompression = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zc0301_device*, %struct.v4l2_jpegcompression*)* @zc0301_set_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zc0301_set_compression(%struct.zc0301_device* %0, %struct.v4l2_jpegcompression* %1) #0 {
  %3 = alloca %struct.zc0301_device*, align 8
  %4 = alloca %struct.v4l2_jpegcompression*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zc0301_device* %0, %struct.zc0301_device** %3, align 8
  store %struct.v4l2_jpegcompression* %1, %struct.v4l2_jpegcompression** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %8 = call i32 @zc0301_read_reg(%struct.zc0301_device* %7, i32 8)
  store i32 %8, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.zc0301_device*, %struct.zc0301_device** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, 17
  %18 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  %22 = call i64 @zc0301_write_reg(%struct.zc0301_device* %15, i32 8, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  br label %33

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  ret i32 %34
}

declare dso_local i32 @zc0301_read_reg(%struct.zc0301_device*, i32) #1

declare dso_local i64 @zc0301_write_reg(%struct.zc0301_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

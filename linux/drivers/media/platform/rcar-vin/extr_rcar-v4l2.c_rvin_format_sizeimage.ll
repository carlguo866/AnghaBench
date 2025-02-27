; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_format_sizeimage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_format_sizeimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i64, i32, i32 }

@V4L2_PIX_FMT_NV16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_pix_format*)* @rvin_format_sizeimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_format_sizeimage(%struct.v4l2_pix_format* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %3, align 8
  %4 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %5 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @V4L2_PIX_FMT_NV16, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

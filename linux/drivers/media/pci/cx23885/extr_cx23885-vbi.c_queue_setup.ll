; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-vbi.c_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-vbi.c_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }
%struct.device = type { i32 }

@VBI_PAL_LINE_COUNT = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VBI_NTSC_LINE_COUNT = common dso_local global i32 0, align 4
@VBI_LINE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.cx23885_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %13, i32 0, i32 0
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %14, align 8
  store %struct.cx23885_dev* %15, %struct.cx23885_dev** %11, align 8
  %16 = load i32, i32* @VBI_PAL_LINE_COUNT, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %11, align 8
  %18 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V4L2_STD_525_60, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @VBI_NTSC_LINE_COUNT, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %23, %5
  %26 = load i32*, i32** %8, align 8
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @VBI_LINE_LENGTH, align 4
  %29 = mul i32 %27, %28
  %30 = mul i32 %29, 2
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

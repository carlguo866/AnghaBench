; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.cx25821_channel* }
%struct.cx25821_channel = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @cx25821_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25821_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.cx25821_channel*, align 8
  %13 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 0
  %16 = load %struct.cx25821_channel*, %struct.cx25821_channel** %15, align 8
  store %struct.cx25821_channel* %16, %struct.cx25821_channel** %12, align 8
  %17 = load %struct.cx25821_channel*, %struct.cx25821_channel** %12, align 8
  %18 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cx25821_channel*, %struct.cx25821_channel** %12, align 8
  %23 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = load %struct.cx25821_channel*, %struct.cx25821_channel** %12, align 8
  %27 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = ashr i32 %29, 3
  store i32 %30, i32* %13, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %5
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ %42, %40 ], [ 0, %43 ]
  store i32 %45, i32* %6, align 4
  br label %51

46:                                               ; preds = %5
  %47 = load i32*, i32** %9, align 8
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %44
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

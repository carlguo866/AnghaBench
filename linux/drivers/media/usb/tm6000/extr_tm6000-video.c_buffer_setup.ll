; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.tm6000_fh* }
%struct.tm6000_fh = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TM6000_DEF_BUF = common dso_local global i32 0, align 4
@TM6000_MIN_BUF = common dso_local global i32 0, align 4
@vid_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tm6000_fh*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %9 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %8, i32 0, i32 0
  %10 = load %struct.tm6000_fh*, %struct.tm6000_fh** %9, align 8
  store %struct.tm6000_fh* %10, %struct.tm6000_fh** %7, align 8
  %11 = load %struct.tm6000_fh*, %struct.tm6000_fh** %7, align 8
  %12 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tm6000_fh*, %struct.tm6000_fh** %7, align 8
  %17 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %15, %18
  %20 = load %struct.tm6000_fh*, %struct.tm6000_fh** %7, align 8
  %21 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = ashr i32 %23, 3
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @TM6000_DEF_BUF, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TM6000_MIN_BUF, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @TM6000_MIN_BUF, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %51, %40
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = mul i32 %43, %45
  %47 = load i32, i32* @vid_limit, align 4
  %48 = mul nsw i32 %47, 1024
  %49 = mul nsw i32 %48, 1024
  %50 = icmp ugt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %41

55:                                               ; preds = %41
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

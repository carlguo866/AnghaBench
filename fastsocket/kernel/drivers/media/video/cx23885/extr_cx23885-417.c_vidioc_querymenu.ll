; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_querymenu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_querymenu = type { i32 }
%struct.cx23885_fh = type { %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_querymenu*)* @vidioc_querymenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querymenu(%struct.file* %0, i8* %1, %struct.v4l2_querymenu* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_querymenu*, align 8
  %7 = alloca %struct.cx23885_fh*, align 8
  %8 = alloca %struct.cx23885_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_querymenu* %2, %struct.v4l2_querymenu** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cx23885_fh*
  store %struct.cx23885_fh* %10, %struct.cx23885_fh** %7, align 8
  %11 = load %struct.cx23885_fh*, %struct.cx23885_fh** %7, align 8
  %12 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %11, i32 0, i32 0
  %13 = load %struct.cx23885_dev*, %struct.cx23885_dev** %12, align 8
  store %struct.cx23885_dev* %13, %struct.cx23885_dev** %8, align 8
  %14 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %15 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %6, align 8
  %16 = call i32 @cx23885_querymenu(%struct.cx23885_dev* %14, %struct.v4l2_querymenu* %15)
  ret i32 %16
}

declare dso_local i32 @cx23885_querymenu(%struct.cx23885_dev*, %struct.v4l2_querymenu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

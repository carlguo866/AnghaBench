; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tw5864_input = type { i32, i32, i32, %struct.tw5864_dev* }
%struct.tw5864_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @tw5864_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tw5864_input*, align 8
  %8 = alloca %struct.tw5864_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.tw5864_input* @video_drvdata(%struct.file* %9)
  store %struct.tw5864_input* %10, %struct.tw5864_input** %7, align 8
  %11 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %12 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %11, i32 0, i32 3
  %13 = load %struct.tw5864_dev*, %struct.tw5864_dev** %12, align 8
  store %struct.tw5864_dev* %13, %struct.tw5864_dev** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %16 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @tw5864_from_v4l2_std(i32 %17)
  %19 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %20 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %22 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @TW5864_INDIR_VIN_E(i32 %23)
  %25 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %26 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @tw_indir_writeb(i32 %24, i32 %27)
  ret i32 0
}

declare dso_local %struct.tw5864_input* @video_drvdata(%struct.file*) #1

declare dso_local i32 @tw5864_from_v4l2_std(i32) #1

declare dso_local i32 @tw_indir_writeb(i32, i32) #1

declare dso_local i32 @TW5864_INDIR_VIN_E(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

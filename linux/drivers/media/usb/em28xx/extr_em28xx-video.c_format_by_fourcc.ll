; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_format_by_fourcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_format_by_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_fmt = type { i32 }

@format = common dso_local global %struct.em28xx_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.em28xx_fmt* (i32)* @format_by_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.em28xx_fmt* @format_by_fourcc(i32 %0) #0 {
  %2 = alloca %struct.em28xx_fmt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** @format, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.em28xx_fmt* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** @format, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.em28xx_fmt, %struct.em28xx_fmt* %11, i64 %13
  %15 = getelementptr inbounds %struct.em28xx_fmt, %struct.em28xx_fmt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** @format, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.em28xx_fmt, %struct.em28xx_fmt* %20, i64 %22
  store %struct.em28xx_fmt* %23, %struct.em28xx_fmt** %2, align 8
  br label %29

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  store %struct.em28xx_fmt* null, %struct.em28xx_fmt** %2, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %2, align 8
  ret %struct.em28xx_fmt* %30
}

declare dso_local i32 @ARRAY_SIZE(%struct.em28xx_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

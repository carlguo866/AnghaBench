; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_planes_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_planes_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omapfb_device*)* @planes_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @planes_cleanup(%struct.omapfb_device* %0) #0 {
  %2 = alloca %struct.omapfb_device*, align 8
  %3 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.omapfb_device*, %struct.omapfb_device** %2, align 8
  %7 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %4
  %12 = load %struct.omapfb_device*, %struct.omapfb_device** %2, align 8
  %13 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %42

21:                                               ; preds = %11
  %22 = load %struct.omapfb_device*, %struct.omapfb_device** %2, align 8
  %23 = load %struct.omapfb_device*, %struct.omapfb_device** %2, align 8
  %24 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @fbinfo_cleanup(%struct.omapfb_device* %22, i32* %29)
  %31 = load %struct.omapfb_device*, %struct.omapfb_device** %2, align 8
  %32 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @framebuffer_release(i32* %37)
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

42:                                               ; preds = %20, %4
  ret void
}

declare dso_local i32 @fbinfo_cleanup(%struct.omapfb_device*, i32*) #1

declare dso_local i32 @framebuffer_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

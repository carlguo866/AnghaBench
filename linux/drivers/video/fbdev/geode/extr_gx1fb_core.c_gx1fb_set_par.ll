; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gx1fb_core.c_gx1fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gx1fb_core.c_gx1fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.geodefb_par* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.geodefb_par = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @gx1fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx1fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.geodefb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 2
  %6 = load %struct.geodefb_par*, %struct.geodefb_par** %5, align 8
  store %struct.geodefb_par* %6, %struct.geodefb_par** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %14 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @gx1_line_delta(i32 %26, i32 %30)
  %32 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.geodefb_par*, %struct.geodefb_par** %3, align 8
  %36 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.fb_info*)**
  %40 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %39, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %42 = call i32 %40(%struct.fb_info* %41)
  ret i32 0
}

declare dso_local i32 @gx1_line_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

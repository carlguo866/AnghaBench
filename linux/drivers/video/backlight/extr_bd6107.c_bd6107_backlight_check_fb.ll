; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_bd6107.c_bd6107_backlight_check_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_bd6107.c_bd6107_backlight_check_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.fb_info = type { i32* }
%struct.bd6107 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, %struct.fb_info*)* @bd6107_backlight_check_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd6107_backlight_check_fb(%struct.backlight_device* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.bd6107*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %7 = call %struct.bd6107* @bl_get_data(%struct.backlight_device* %6)
  store %struct.bd6107* %7, %struct.bd6107** %5, align 8
  %8 = load %struct.bd6107*, %struct.bd6107** %5, align 8
  %9 = getelementptr inbounds %struct.bd6107, %struct.bd6107* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.bd6107*, %struct.bd6107** %5, align 8
  %16 = getelementptr inbounds %struct.bd6107, %struct.bd6107* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %19, %22
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i1 [ true, %2 ], [ %23, %14 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local %struct.bd6107* @bl_get_data(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

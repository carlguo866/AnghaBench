; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_g_hflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_g_hflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_MVFP = common dso_local global i32 0, align 4
@MVFP_MIRROR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @ov7670_g_hflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_g_hflip(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8 0, i8* %6, align 1
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = load i32, i32* @REG_MVFP, align 4
  %9 = call i32 @ov7670_read(%struct.v4l2_subdev* %7, i32 %8, i8* %6)
  store i32 %9, i32* %5, align 4
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @MVFP_MIRROR, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %11, %13
  %15 = load i8, i8* @MVFP_MIRROR, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @ov7670_read(%struct.v4l2_subdev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

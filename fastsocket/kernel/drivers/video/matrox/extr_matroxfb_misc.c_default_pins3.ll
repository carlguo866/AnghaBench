; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_default_pins3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_default_pins3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_9__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*)* @default_pins3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_pins3(%struct.matrox_fb_info* %0) #0 {
  %2 = alloca %struct.matrox_fb_info*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %2, align 8
  %3 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 230000, i32* %6, align 4
  %7 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 230000, i32* %10, align 4
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 19204641, i32* %14, align 4
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  store i32 3072, i32* %22, align 4
  %23 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 27000, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

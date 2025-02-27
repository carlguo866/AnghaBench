; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cropl_min_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cropl_min_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.v4l2_cropcap }
%struct.v4l2_cropcap = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32*)* @ctrl_cropl_min_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_cropl_min_get(%struct.pvr2_ctrl* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_ctrl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.v4l2_cropcap*, align 8
  %7 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %9 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.v4l2_cropcap* %11, %struct.v4l2_cropcap** %6, align 8
  %12 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %13 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @pvr2_hdw_check_cropcap(%struct.TYPE_4__* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @pvr2_hdw_check_cropcap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

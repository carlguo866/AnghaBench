; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_output_vol_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_output_vol_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.control_runtime = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Invalid channel in volume control.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @usb6fire_control_output_vol_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_control_output_vol_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.control_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.control_runtime* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.control_runtime* %9, %struct.control_runtime** %6, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %2
  %26 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %27 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %32, i32* %38, align 4
  %39 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %40 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %46, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %25, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.control_runtime* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

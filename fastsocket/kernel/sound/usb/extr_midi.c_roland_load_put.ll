; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_roland_load_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_roland_load_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.snd_usb_midi* }
%struct.snd_usb_midi = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @roland_load_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roland_load_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_usb_midi*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 1
  %10 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %9, align 8
  store %struct.snd_usb_midi* %10, %struct.snd_usb_midi** %6, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %6, align 8
  %24 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %22
  %41 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %49 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %40, %22
  %51 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %6, align 8
  %52 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

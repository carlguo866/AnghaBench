; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_wm_master_vol_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_wm_master_vol_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { %struct.aureon_spec* }
%struct.aureon_spec = type { i32* }

@WM_VOL_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_master_vol_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_master_vol_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca %struct.aureon_spec*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %5, align 8
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 0
  %12 = load %struct.aureon_spec*, %struct.aureon_spec** %11, align 8
  store %struct.aureon_spec* %12, %struct.aureon_spec** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %35, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load %struct.aureon_spec*, %struct.aureon_spec** %6, align 8
  %18 = getelementptr inbounds %struct.aureon_spec, %struct.aureon_spec* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WM_VOL_MUTE, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %26, i32* %34, align 4
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %13

38:                                               ; preds = %13
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

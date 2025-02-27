; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_wm_bypass_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_wm_bypass_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.snd_ice1712 = type { i32 }

@WM_OUT_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_bypass_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_bypass_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_ice1712* %10, %struct.snd_ice1712** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %15 = load i32, i32* @WM_OUT_MUX, align 4
  %16 = call zeroext i16 @wm_get(%struct.snd_ice1712* %14, i32 %15)
  store i16 %16, i16* %7, align 2
  store i16 %16, i16* %6, align 2
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %27, 4
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %6, align 2
  br label %35

30:                                               ; preds = %2
  %31 = load i16, i16* %6, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, -5
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %6, align 2
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %43 = load i32, i32* @WM_OUT_MUX, align 4
  %44 = load i16, i16* %6, align 2
  %45 = call i32 @wm_put(%struct.snd_ice1712* %42, i32 %43, i16 zeroext %44)
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i16 @wm_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i32, i16 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

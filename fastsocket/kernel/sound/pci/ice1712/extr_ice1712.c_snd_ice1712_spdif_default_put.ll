; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_spdif_default_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_spdif_default_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.snd_ice1712 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.snd_ice1712.0*, %struct.snd_ctl_elem_value.1*)* }
%struct.snd_ice1712.0 = type opaque
%struct.snd_ctl_elem_value.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ice1712_spdif_default_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_spdif_default_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %8 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_ice1712* %8, %struct.snd_ice1712** %6, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.snd_ice1712.0*, %struct.snd_ctl_elem_value.1*)*, i32 (%struct.snd_ice1712.0*, %struct.snd_ctl_elem_value.1*)** %12, align 8
  %14 = icmp ne i32 (%struct.snd_ice1712.0*, %struct.snd_ctl_elem_value.1*)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %17 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.snd_ice1712.0*, %struct.snd_ctl_elem_value.1*)*, i32 (%struct.snd_ice1712.0*, %struct.snd_ctl_elem_value.1*)** %19, align 8
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %22 = bitcast %struct.snd_ice1712* %21 to %struct.snd_ice1712.0*
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %24 = bitcast %struct.snd_ctl_elem_value* %23 to %struct.snd_ctl_elem_value.1*
  %25 = call i32 %20(%struct.snd_ice1712.0* %22, %struct.snd_ctl_elem_value.1* %24)
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_pontis_gpio_data_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_pontis.c_pontis_gpio_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.snd_ice1712 = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @pontis_gpio_data_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pontis_gpio_data_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %6)
  store %struct.snd_ice1712* %7, %struct.snd_ice1712** %5, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712* %11, i32 %15)
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712* %17, i32 %21)
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %24 = call i32 @snd_ice1712_gpio_read(%struct.snd_ice1712* %23)
  %25 = and i32 %24, 65535
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %25, i32* %31, align 4
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ice1712_gpio_set_dir(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_set_mask(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_gpio_read(%struct.snd_ice1712*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

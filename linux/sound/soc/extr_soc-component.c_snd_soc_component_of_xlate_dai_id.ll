; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-component.c_snd_soc_component_of_xlate_dai_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-component.c_snd_soc_component_of_xlate_dai_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.device_node = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_component_of_xlate_dai_id(%struct.snd_soc_component* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %7 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.snd_soc_component*, %struct.device_node*)**
  %11 = load i32 (%struct.snd_soc_component*, %struct.device_node*)*, i32 (%struct.snd_soc_component*, %struct.device_node*)** %10, align 8
  %12 = icmp ne i32 (%struct.snd_soc_component*, %struct.device_node*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.snd_soc_component*, %struct.device_node*)**
  %19 = load i32 (%struct.snd_soc_component*, %struct.device_node*)*, i32 (%struct.snd_soc_component*, %struct.device_node*)** %18, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call i32 %19(%struct.snd_soc_component* %20, %struct.device_node* %21)
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

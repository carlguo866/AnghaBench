; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_bus_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_bus_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97_bus = type { {}*, %struct.snd_ac97_bus* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97_bus*)* @snd_ac97_bus_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_bus_free(%struct.snd_ac97_bus* %0) #0 {
  %2 = alloca %struct.snd_ac97_bus*, align 8
  store %struct.snd_ac97_bus* %0, %struct.snd_ac97_bus** %2, align 8
  %3 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %2, align 8
  %4 = icmp ne %struct.snd_ac97_bus* %3, null
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %2, align 8
  %7 = call i32 @snd_ac97_bus_proc_done(%struct.snd_ac97_bus* %6)
  %8 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %2, align 8
  %9 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %8, i32 0, i32 1
  %10 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %9, align 8
  %11 = call i32 @kfree(%struct.snd_ac97_bus* %10)
  %12 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %2, align 8
  %13 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.snd_ac97_bus*)**
  %15 = load i32 (%struct.snd_ac97_bus*)*, i32 (%struct.snd_ac97_bus*)** %14, align 8
  %16 = icmp ne i32 (%struct.snd_ac97_bus*)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %2, align 8
  %19 = getelementptr inbounds %struct.snd_ac97_bus, %struct.snd_ac97_bus* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.snd_ac97_bus*)**
  %21 = load i32 (%struct.snd_ac97_bus*)*, i32 (%struct.snd_ac97_bus*)** %20, align 8
  %22 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %2, align 8
  %23 = call i32 %21(%struct.snd_ac97_bus* %22)
  br label %24

24:                                               ; preds = %17, %5
  %25 = load %struct.snd_ac97_bus*, %struct.snd_ac97_bus** %2, align 8
  %26 = call i32 @kfree(%struct.snd_ac97_bus* %25)
  br label %27

27:                                               ; preds = %24, %1
  ret i32 0
}

declare dso_local i32 @snd_ac97_bus_proc_done(%struct.snd_ac97_bus*) #1

declare dso_local i32 @kfree(%struct.snd_ac97_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

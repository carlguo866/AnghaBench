; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_fx.c_snd_wavefront_fx_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_fx.c_snd_wavefront_fx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { %struct.snd_hwdep* }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wavefront_fx_open(%struct.snd_hwdep* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_hwdep*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %7 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @try_module_get(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  store %struct.snd_hwdep* %17, %struct.snd_hwdep** %19, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

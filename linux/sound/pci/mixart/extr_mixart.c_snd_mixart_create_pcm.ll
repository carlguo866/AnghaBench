; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_create_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_snd_mixart_create_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixart = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MIXART_DAUGHTER_TYPE_AES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_mixart_create_pcm(%struct.snd_mixart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixart*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_mixart* %0, %struct.snd_mixart** %3, align 8
  %5 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %6 = call i32 @snd_mixart_pcm_analog(%struct.snd_mixart* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %13 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MIXART_DAUGHTER_TYPE_AES, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.snd_mixart*, %struct.snd_mixart** %3, align 8
  %21 = call i32 @snd_mixart_pcm_digital(%struct.snd_mixart* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %24, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @snd_mixart_pcm_analog(%struct.snd_mixart*) #1

declare dso_local i32 @snd_mixart_pcm_digital(%struct.snd_mixart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_terratec.c_phase88_rack_clk_src_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_terratec.c_phase88_rack_clk_src_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, i32*)* @phase88_rack_clk_src_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phase88_rack_clk_src_get(%struct.snd_bebob* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %9 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @avc_audio_get_selector(i32 %10, i32 0, i32 9, i32* %5)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %17 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @avc_audio_get_selector(i32 %18, i32 0, i32 8, i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %37

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  store i32 0, i32* %27, align 4
  br label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  store i32 1, i32* %32, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  store i32 2, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %26
  br label %37

37:                                               ; preds = %36, %22, %14
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @avc_audio_get_selector(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

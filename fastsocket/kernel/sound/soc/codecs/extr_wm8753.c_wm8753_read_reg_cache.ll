; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_read_reg_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_read_reg_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32* }

@wm8753_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8753_read_reg_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 1
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @wm8753_reg, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = add nsw i32 %15, 1
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %26

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

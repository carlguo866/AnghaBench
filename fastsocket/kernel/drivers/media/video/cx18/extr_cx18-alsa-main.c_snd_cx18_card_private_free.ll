; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-alsa-main.c_snd_cx18_card_private_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-alsa-main.c_snd_cx18_card_private_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_card*)* @snd_cx18_card_private_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cx18_card_private_free(%struct.snd_card* %0) #0 {
  %2 = alloca %struct.snd_card*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %2, align 8
  %3 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %4 = icmp eq %struct.snd_card* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %8 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @snd_cx18_card_free(i32* %9)
  %11 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %12 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %14 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @snd_cx18_card_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

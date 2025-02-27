; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-audio.c_usbtv_audio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-audio.c_usbtv_audio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtv = type { i32*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbtv_audio_free(%struct.usbtv* %0) #0 {
  %2 = alloca %struct.usbtv*, align 8
  store %struct.usbtv* %0, %struct.usbtv** %2, align 8
  %3 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %4 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %3, i32 0, i32 2
  %5 = call i32 @cancel_work_sync(i32* %4)
  %6 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %7 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %12 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %17 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @snd_card_free(i32* %18)
  %20 = load %struct.usbtv*, %struct.usbtv** %2, align 8
  %21 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %10, %1
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @snd_card_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

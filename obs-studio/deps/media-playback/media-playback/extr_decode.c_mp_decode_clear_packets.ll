; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_decode.c_mp_decode_clear_packets.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_decode.c_mp_decode_clear_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_decode = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_decode_clear_packets(%struct.mp_decode* %0) #0 {
  %2 = alloca %struct.mp_decode*, align 8
  %3 = alloca i32, align 4
  store %struct.mp_decode* %0, %struct.mp_decode** %2, align 8
  %4 = load %struct.mp_decode*, %struct.mp_decode** %2, align 8
  %5 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.mp_decode*, %struct.mp_decode** %2, align 8
  %10 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %9, i32 0, i32 2
  %11 = call i32 @av_packet_unref(i32* %10)
  %12 = load %struct.mp_decode*, %struct.mp_decode** %2, align 8
  %13 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  br label %14

14:                                               ; preds = %8, %1
  br label %15

15:                                               ; preds = %21, %14
  %16 = load %struct.mp_decode*, %struct.mp_decode** %2, align 8
  %17 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.mp_decode*, %struct.mp_decode** %2, align 8
  %23 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %22, i32 0, i32 1
  %24 = call i32 @circlebuf_pop_front(%struct.TYPE_2__* %23, i32* %3, i32 4)
  %25 = call i32 @av_packet_unref(i32* %3)
  br label %15

26:                                               ; preds = %15
  ret void
}

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

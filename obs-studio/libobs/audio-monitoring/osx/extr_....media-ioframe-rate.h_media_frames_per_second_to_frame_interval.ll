; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....media-ioframe-rate.h_media_frames_per_second_to_frame_interval.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....media-ioframe-rate.h_media_frames_per_second_to_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_frames_per_second = type { double, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, i64)* @media_frames_per_second_to_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @media_frames_per_second_to_frame_interval(double %0, i64 %1) #0 {
  %3 = alloca %struct.media_frames_per_second, align 8
  %4 = bitcast %struct.media_frames_per_second* %3 to { double, i64 }*
  %5 = getelementptr inbounds { double, i64 }, { double, i64 }* %4, i32 0, i32 0
  store double %0, double* %5, align 8
  %6 = getelementptr inbounds { double, i64 }, { double, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = getelementptr inbounds %struct.media_frames_per_second, %struct.media_frames_per_second* %3, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sitofp i64 %8 to double
  %10 = getelementptr inbounds %struct.media_frames_per_second, %struct.media_frames_per_second* %3, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %11
  ret double %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

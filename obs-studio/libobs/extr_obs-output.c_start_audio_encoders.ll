; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_start_audio_encoders.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_start_audio_encoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, i32)* @start_audio_encoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_audio_encoders(%struct.obs_output* %0, i32 %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %8 = call i64 @num_audio_mixes(%struct.obs_output* %7)
  store i64 %8, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %15 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %22 = call i32 @obs_encoder_start(i32 %19, i32 %20, %struct.obs_output* %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %9

26:                                               ; preds = %9
  ret void
}

declare dso_local i64 @num_audio_mixes(%struct.obs_output*) #1

declare dso_local i32 @obs_encoder_start(i32, i32, %struct.obs_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

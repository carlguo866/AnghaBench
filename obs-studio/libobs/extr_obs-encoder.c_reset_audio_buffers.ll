; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_reset_audio_buffers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_reset_audio_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_encoder*)* @reset_audio_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_audio_buffers(%struct.obs_encoder* %0) #0 {
  %2 = alloca %struct.obs_encoder*, align 8
  %3 = alloca i64, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %2, align 8
  %4 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %5 = call i32 @free_audio_buffers(%struct.obs_encoder* %4)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bmalloc(i32 %15)
  %17 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %18 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %16, i32* %21, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %6

25:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free_audio_buffers(%struct.obs_encoder*) #1

declare dso_local i32 @bmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

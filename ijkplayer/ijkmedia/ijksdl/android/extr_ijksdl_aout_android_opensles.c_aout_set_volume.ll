; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_aout_android_opensles.c_aout_set_volume.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/android/extr_ijksdl_aout_android_opensles.c_aout_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float, float, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"aout_set_volume(%f, %f)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float, float)* @aout_set_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aout_set_volume(%struct.TYPE_5__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SDL_LockMutex(i32 %13)
  %15 = load float, float* %5, align 4
  %16 = load float, float* %6, align 4
  %17 = call i32 @ALOGI(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), float %15, float %16)
  %18 = load float, float* %5, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store float %18, float* %20, align 4
  %21 = load float, float* %6, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store float %21, float* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SDL_CondSignal(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SDL_UnlockMutex(i32 %32)
  ret void
}

declare dso_local i32 @SDL_LockMutex(i32) #1

declare dso_local i32 @ALOGI(i8*, float, float) #1

declare dso_local i32 @SDL_CondSignal(i32) #1

declare dso_local i32 @SDL_UnlockMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_free_saved_state.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_free_saved_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.android_app*)* @free_saved_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_saved_state(%struct.android_app* %0) #0 {
  %2 = alloca %struct.android_app*, align 8
  store %struct.android_app* %0, %struct.android_app** %2, align 8
  %3 = load %struct.android_app*, %struct.android_app** %2, align 8
  %4 = getelementptr inbounds %struct.android_app, %struct.android_app* %3, i32 0, i32 0
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  %6 = load %struct.android_app*, %struct.android_app** %2, align 8
  %7 = getelementptr inbounds %struct.android_app, %struct.android_app* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.android_app*, %struct.android_app** %2, align 8
  %12 = getelementptr inbounds %struct.android_app, %struct.android_app* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @free(i32* %13)
  %15 = load %struct.android_app*, %struct.android_app** %2, align 8
  %16 = getelementptr inbounds %struct.android_app, %struct.android_app* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.android_app*, %struct.android_app** %2, align 8
  %18 = getelementptr inbounds %struct.android_app, %struct.android_app* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.android_app*, %struct.android_app** %2, align 8
  %21 = getelementptr inbounds %struct.android_app, %struct.android_app* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_unlock(i32* %21)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

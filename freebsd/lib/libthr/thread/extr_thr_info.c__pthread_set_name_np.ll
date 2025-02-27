; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_info.c__pthread_set_name_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_info.c__pthread_set_name_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i64, i32 }

@PS_DEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_pthread_set_name_np(%struct.pthread* %0, i8* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %6, %struct.pthread** %5, align 8
  %7 = load %struct.pthread*, %struct.pthread** %5, align 8
  %8 = load %struct.pthread*, %struct.pthread** %3, align 8
  %9 = icmp eq %struct.pthread* %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.pthread*, %struct.pthread** %5, align 8
  %12 = load %struct.pthread*, %struct.pthread** %3, align 8
  %13 = call i32 @THR_THREAD_LOCK(%struct.pthread* %11, %struct.pthread* %12)
  %14 = load %struct.pthread*, %struct.pthread** %3, align 8
  %15 = getelementptr inbounds %struct.pthread, %struct.pthread* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @thr_set_name(i32 %16, i8* %17)
  %19 = load %struct.pthread*, %struct.pthread** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @thr_set_name_np(%struct.pthread* %19, i8* %20)
  %22 = load %struct.pthread*, %struct.pthread** %5, align 8
  %23 = load %struct.pthread*, %struct.pthread** %3, align 8
  %24 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %22, %struct.pthread* %23)
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.pthread*, %struct.pthread** %5, align 8
  %27 = load %struct.pthread*, %struct.pthread** %3, align 8
  %28 = call i64 @_thr_find_thread(%struct.pthread* %26, %struct.pthread* %27, i32 0)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load %struct.pthread*, %struct.pthread** %3, align 8
  %32 = getelementptr inbounds %struct.pthread, %struct.pthread* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PS_DEAD, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.pthread*, %struct.pthread** %3, align 8
  %38 = getelementptr inbounds %struct.pthread, %struct.pthread* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @thr_set_name(i32 %39, i8* %40)
  %42 = load %struct.pthread*, %struct.pthread** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @thr_set_name_np(%struct.pthread* %42, i8* %43)
  br label %45

45:                                               ; preds = %36, %30
  %46 = load %struct.pthread*, %struct.pthread** %5, align 8
  %47 = load %struct.pthread*, %struct.pthread** %3, align 8
  %48 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %46, %struct.pthread* %47)
  br label %49

49:                                               ; preds = %45, %25
  br label %50

50:                                               ; preds = %49, %10
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_THREAD_LOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @thr_set_name(i32, i8*) #1

declare dso_local i32 @thr_set_name_np(%struct.pthread*, i8*) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i64 @_thr_find_thread(%struct.pthread*, %struct.pthread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

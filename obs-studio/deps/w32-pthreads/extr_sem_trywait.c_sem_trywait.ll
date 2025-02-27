; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_sem_trywait.c_sem_trywait.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_sem_trywait.c_sem_trywait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@EINVAL = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sem_trywait(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** @EINVAL, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %4, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp eq %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @pthread_mutex_unlock(i32* %24)
  %26 = load i8*, i8** @EINVAL, align 8
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %51

28:                                               ; preds = %18
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @EAGAIN, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %40, %13
  br label %45

45:                                               ; preds = %44, %10
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %51

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %48, %22
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

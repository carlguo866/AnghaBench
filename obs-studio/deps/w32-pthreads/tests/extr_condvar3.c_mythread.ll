; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3.c_mythread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3.c_mythread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex = common dso_local global i32 0, align 4
@shared = common dso_local global i32 0, align 4
@cv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Error = %s\0A\00", align 1
@error_string = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mythread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i64 @pthread_mutex_lock(i32* @mutex)
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @shared, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @shared, align 4
  %10 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 @pthread_cond_signal(i32* @cv)
  store i32 %14, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i8**, i8*** @error_string, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  ret i8* null
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

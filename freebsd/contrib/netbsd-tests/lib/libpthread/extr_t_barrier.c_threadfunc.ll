; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_barrier.c_threadfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_barrier.c_threadfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"thread %d entering barrier\0A\00", align 1
@barrier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"thread %d leaving barrier -> %d\0A\00", align 1
@mutex = common dso_local global i32 0, align 4
@after_barrier_count = common dso_local global i32 0, align 4
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i32 0, align 4
@serial_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @threadfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @threadfunc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @pthread_barrier_wait(i32* @barrier)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12)
  %14 = call i32 @pthread_mutex_lock(i32* @mutex)
  %15 = call i32 @PTHREAD_REQUIRE(i32 %14)
  %16 = load i32, i32* @after_barrier_count, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @after_barrier_count, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PTHREAD_BARRIER_SERIAL_THREAD, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @serial_count, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @serial_count, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = call i32 @pthread_mutex_unlock(i32* @mutex)
  %26 = call i32 @PTHREAD_REQUIRE(i32 %25)
  ret i8* null
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @PTHREAD_REQUIRE(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

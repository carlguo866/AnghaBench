; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_mutex7r.c_locker.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_mutex7r.c_locker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex = common dso_local global i32 0, align 4
@lockCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @locker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i64 @pthread_mutex_lock(i32* @mutex)
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @lockCount, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @lockCount, align 4
  %9 = call i64 @pthread_mutex_trylock(i32* @mutex)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @lockCount, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @lockCount, align 4
  %15 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  ret i8* inttoptr (i64 555 to i8*)
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_mutex_trylock(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

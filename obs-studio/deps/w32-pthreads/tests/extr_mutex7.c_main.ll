; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_mutex7.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_mutex7.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex = common dso_local global i32 0, align 4
@locker = common dso_local global i32 0, align 4
@lockCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i64 @pthread_mutex_init(i32* @mutex, i32* null)
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @locker, align 4
  %8 = call i64 @pthread_create(i32* %2, i32* null, i32 %7, i32* null)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 @Sleep(i32 1000)
  %13 = load i32, i32* @lockCount, align 4
  %14 = icmp eq i32 %13, 2
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @Sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

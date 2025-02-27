; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_malloc.c___thr_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_malloc.c___thr_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__thr_malloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %5 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %5, %struct.pthread** %3, align 8
  %6 = load %struct.pthread*, %struct.pthread** %3, align 8
  %7 = call i32 @thr_malloc_lock(%struct.pthread* %6)
  %8 = load i64, i64* %2, align 8
  %9 = call i8* @__crt_malloc(i64 %8)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.pthread*, %struct.pthread** %3, align 8
  %11 = call i32 @thr_malloc_unlock(%struct.pthread* %10)
  %12 = load i8*, i8** %4, align 8
  ret i8* %12
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @thr_malloc_lock(%struct.pthread*) #1

declare dso_local i8* @__crt_malloc(i64) #1

declare dso_local i32 @thr_malloc_unlock(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

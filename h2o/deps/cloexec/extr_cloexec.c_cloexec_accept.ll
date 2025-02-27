; ModuleID = '/home/carl/AnghaBench/h2o/deps/cloexec/extr_cloexec.c_cloexec_accept.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/cloexec/extr_cloexec.c_cloexec_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@cloexec_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloexec_accept(i32 %0, %struct.sockaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 @pthread_mutex_lock(i32* @cloexec_mutex)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @accept(i32 %9, %struct.sockaddr* %10, i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @set_cloexec(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @close(i32 %20)
  store i32 -1, i32* %7, align 4
  br label %23

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %19, %14
  %24 = call i32 @pthread_mutex_unlock(i32* @cloexec_mutex)
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @set_cloexec(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_shutdown.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_shutdown(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_sock*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @nn_global_hold_socket(%struct.nn_sock** %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @nn_slow(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @nn_sock_rm_ep(%struct.nn_sock* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @nn_slow(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %29 = call i32 @nn_global_rele_socket(%struct.nn_sock* %28)
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %39

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @nn_assert(i32 %35)
  %37 = load %struct.nn_sock*, %struct.nn_sock** %7, align 8
  %38 = call i32 @nn_global_rele_socket(%struct.nn_sock* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %27, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @nn_global_hold_socket(%struct.nn_sock**, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_sock_rm_ep(%struct.nn_sock*, i32) #1

declare dso_local i32 @nn_global_rele_socket(%struct.nn_sock*) #1

declare dso_local i32 @nn_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_bsdthread_add_explicit_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_bsdthread_add_explicit_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@THREAD_QOS_OVERRIDE_TYPE_PTHREAD_EXPLICIT_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32)* @bsdthread_add_explicit_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsdthread_add_explicit_override(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @_pthread_priority_thread_qos(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %41

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @port_name_to_thread(i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @THREAD_NULL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @ESRCH, align 4
  store i32 %27, i32* %5, align 4
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @THREAD_QOS_OVERRIDE_TYPE_PTHREAD_EXPLICIT_OVERRIDE, align 4
  %37 = call i32 @proc_thread_qos_add_override(i32 %31, i64 %32, i32 0, i64 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @thread_deallocate(i64 %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %28, %26, %18
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @_pthread_priority_thread_qos(i32) #1

declare dso_local i64 @port_name_to_thread(i32) #1

declare dso_local i32 @proc_thread_qos_add_override(i32, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @thread_deallocate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

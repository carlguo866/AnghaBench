; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_kctx_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_kctx_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_kctx = type { i64, i64, %struct.nm_kctx_ctx }
%struct.nm_kctx_ctx = type { i32, i32 (i32)*, i64 }

@curthread = common dso_local global i32 0, align 4
@curproc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nm_kctx_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nm_kctx_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nm_kctx*, align 8
  %4 = alloca %struct.nm_kctx_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nm_kctx*
  store %struct.nm_kctx* %6, %struct.nm_kctx** %3, align 8
  %7 = load %struct.nm_kctx*, %struct.nm_kctx** %3, align 8
  %8 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %7, i32 0, i32 2
  store %struct.nm_kctx_ctx* %8, %struct.nm_kctx_ctx** %4, align 8
  %9 = load %struct.nm_kctx*, %struct.nm_kctx** %3, align 8
  %10 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @curthread, align 4
  %15 = call i32 @thread_lock(i32 %14)
  %16 = load i32, i32* @curthread, align 4
  %17 = load %struct.nm_kctx*, %struct.nm_kctx** %3, align 8
  %18 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @sched_bind(i32 %16, i64 %19)
  %21 = load i32, i32* @curthread, align 4
  %22 = call i32 @thread_unlock(i32 %21)
  br label %23

23:                                               ; preds = %13, %1
  br label %24

24:                                               ; preds = %42, %23
  %25 = load %struct.nm_kctx*, %struct.nm_kctx** %3, align 8
  %26 = getelementptr inbounds %struct.nm_kctx, %struct.nm_kctx* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.nm_kctx_ctx*, %struct.nm_kctx_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.nm_kctx_ctx, %struct.nm_kctx_ctx* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @curproc, align 4
  %36 = call i32 @PROC_LOCK(i32 %35)
  %37 = call i32 @thread_suspend_check(i32 0)
  %38 = load i32, i32* @curproc, align 4
  %39 = call i32 @PROC_UNLOCK(i32 %38)
  br label %42

40:                                               ; preds = %29
  %41 = call i32 (...) @kthread_suspend_check()
  br label %42

42:                                               ; preds = %40, %34
  %43 = load %struct.nm_kctx_ctx*, %struct.nm_kctx_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.nm_kctx_ctx, %struct.nm_kctx_ctx* %43, i32 0, i32 1
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load %struct.nm_kctx_ctx*, %struct.nm_kctx_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.nm_kctx_ctx, %struct.nm_kctx_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %45(i32 %48)
  br label %24

50:                                               ; preds = %24
  %51 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @sched_bind(i32, i64) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @thread_suspend_check(i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @kthread_suspend_check(...) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

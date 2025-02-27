; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_run.c_svc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_run.c_svc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@svc_fd_lock = common dso_local global i32 0, align 4
@svc_fdset = common dso_local global i32 0, align 4
@svc_maxfd = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"svc_run: - select failed\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 8
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 30, i32* %4, align 8
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %27, %22, %19, %0
  %7 = call i32 @rwlock_rdlock(i32* @svc_fd_lock)
  %8 = load i32, i32* @svc_fdset, align 4
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @svc_fdset, align 4
  store i32 %9, i32* %2, align 4
  %10 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  %11 = load i64, i64* @svc_maxfd, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i32 @_select(i64 %12, i32* %1, i32* null, i32* null, %struct.timeval* %3)
  switch i32 %13, label %25 [
    i32 -1, label %14
    i32 0, label %22
  ]

14:                                               ; preds = %6
  %15 = call i32 @FD_ZERO(i32* %1)
  %16 = load i32, i32* @errno, align 4
  %17 = load i32, i32* @EINTR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %6

20:                                               ; preds = %14
  %21 = call i32 @_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  ret void

22:                                               ; preds = %6
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @__svc_clean_idle(i32* %2, i32 30, i32 %23)
  br label %6

25:                                               ; preds = %6
  %26 = call i32 @svc_getreqset(i32* %1)
  br label %27

27:                                               ; preds = %25
  br label %6
}

declare dso_local i32 @rwlock_rdlock(i32*) #1

declare dso_local i32 @rwlock_unlock(i32*) #1

declare dso_local i32 @_select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @_warn(i8*) #1

declare dso_local i32 @__svc_clean_idle(i32*, i32, i32) #1

declare dso_local i32 @svc_getreqset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

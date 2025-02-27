; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_download_done.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_download_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@SYNC_ERROR_ID_NO_ERROR = common dso_local global i64 0, align 8
@HTTP_TASK_STATE_ERROR = common dso_local global i64 0, align 8
@HTTP_TASK_RT_STATE_FINISHED = common dso_local global i32 0, align 4
@HTTP_TASK_STATE_CANCELED = common dso_local global i64 0, align 8
@HTTP_TASK_STATE_FINISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_download_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_download_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SYNC_ERROR_ID_NO_ERROR, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = load i64, i64* @HTTP_TASK_STATE_ERROR, align 8
  %14 = load i32, i32* @HTTP_TASK_RT_STATE_FINISHED, align 4
  %15 = call i32 @transition_state(%struct.TYPE_3__* %12, i64 %13, i32 %14)
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @HTTP_TASK_RT_STATE_FINISHED, align 4
  %28 = call i32 @transition_state(%struct.TYPE_3__* %23, i64 %26, i32 %27)
  br label %34

29:                                               ; preds = %16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = load i64, i64* @HTTP_TASK_STATE_FINISHED, align 8
  %32 = load i32, i32* @HTTP_TASK_RT_STATE_FINISHED, align 4
  %33 = call i32 @transition_state(%struct.TYPE_3__* %30, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  br label %35

35:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @transition_state(%struct.TYPE_3__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

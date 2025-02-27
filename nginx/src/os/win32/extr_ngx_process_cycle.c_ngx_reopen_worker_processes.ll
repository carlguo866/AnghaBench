; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_reopen_worker_processes.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_reopen_worker_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@ngx_last_process = common dso_local global i64 0, align 8
@ngx_processes = common dso_local global %struct.TYPE_5__* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SetEvent(\22%s\22) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @ngx_reopen_worker_processes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_reopen_worker_processes(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %37, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @ngx_last_process, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ngx_processes, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %37

16:                                               ; preds = %8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ngx_processes, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @SetEvent(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load i32, i32* @NGX_LOG_ALERT, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ngx_errno, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ngx_processes, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ngx_log_error(i32 %25, i32 %28, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %24, %16
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %4

40:                                               ; preds = %4
  ret void
}

declare dso_local i64 @SetEvent(i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

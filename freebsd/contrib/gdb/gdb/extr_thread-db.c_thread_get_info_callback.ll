; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_get_info_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_get_info_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.thread_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"thread_get_info_callback: cannot get thread info: %s\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*)* @thread_get_info_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_get_info_callback(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread_info*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call i64 @td_thr_get_info_p(%struct.TYPE_11__* %9, %struct.TYPE_11__* %5)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @TD_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @thread_db_err_str(i64 %15)
  %17 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @inferior_ptid, align 4
  %22 = call i32 @GET_PID(i32 %21)
  %23 = call i32 @BUILD_THREAD(i32 %20, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.thread_info* @find_thread_pid(i32 %24)
  store %struct.thread_info* %25, %struct.thread_info** %7, align 8
  %26 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %27 = icmp eq %struct.thread_info* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = call i32 @attach_thread(i32 %29, %struct.TYPE_11__* %30, %struct.TYPE_11__* %5, i32 1)
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.thread_info* @find_thread_pid(i32 %32)
  store %struct.thread_info* %33, %struct.thread_info** %7, align 8
  %34 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %35 = icmp ne %struct.thread_info* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @gdb_assert(i32 %36)
  br label %38

38:                                               ; preds = %28, %18
  %39 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %40 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = call i32 @memcpy(i32* %42, %struct.TYPE_11__* %43, i32 4)
  %45 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %46 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %50 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = call i32 @memcpy(i32* %52, %struct.TYPE_11__* %5, i32 4)
  %54 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %55 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  %61 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = bitcast i8* %62 to %struct.thread_info**
  store %struct.thread_info* %61, %struct.thread_info** %63, align 8
  br label %64

64:                                               ; preds = %60, %38
  ret i32 0
}

declare dso_local i64 @td_thr_get_info_p(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @thread_db_err_str(i64) #1

declare dso_local i32 @BUILD_THREAD(i32, i32) #1

declare dso_local i32 @GET_PID(i32) #1

declare dso_local %struct.thread_info* @find_thread_pid(i32) #1

declare dso_local i32 @attach_thread(i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_print_tasks_user_threads.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_print_tasks_user_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Thread %d: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\090x%016llx\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_tasks_user_threads(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = call %struct.TYPE_14__* (...) @current_thread()
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = call i64 @queue_first(i32* %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %3, align 8
  br label %14

14:                                               ; preds = %45, %1
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = call i32 (i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.TYPE_14__* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = call i32 @get_task_pmap(%struct.TYPE_15__* %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = call %struct.TYPE_13__* @get_user_regs(%struct.TYPE_14__* %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %4, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @print_one_backtrace(i32 %38, i32 %40, i8* %41, i32 %42)
  %44 = call i32 (i8*, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %20
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = call i64 @queue_next(i32* %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %3, align 8
  br label %14

52:                                               ; preds = %14
  ret void
}

declare dso_local %struct.TYPE_14__* @current_thread(...) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @paniclog_append_noflush(i8*, ...) #1

declare dso_local i32 @get_task_pmap(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_13__* @get_user_regs(%struct.TYPE_14__*) #1

declare dso_local i32 @print_one_backtrace(i32, i32, i8*, i32) #1

declare dso_local i64 @queue_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_list_engine_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_list_engine_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"list_engine_wakeup (%p)\0A\00", align 1
@conn_generation = common dso_local global i64 0, align 8
@conn_reading_query = common dso_local global i32 0, align 4
@C_WANTWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_engine_wakeup(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load i32, i32* @verbosity, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.connection* %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = load i64, i64* @conn_generation, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @conn_generation, align 8
  %12 = load %struct.connection*, %struct.connection** %2, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 4
  store i64 %11, i64* %13, align 8
  %14 = load %struct.connection*, %struct.connection** %2, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @conn_reading_query, align 4
  %17 = load %struct.connection*, %struct.connection** %2, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.connection*, %struct.connection** %2, align 8
  %20 = call i32 @clear_connection_timeout(%struct.connection* %19)
  %21 = load %struct.connection*, %struct.connection** %2, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %9
  %27 = load i32, i32* @C_WANTWR, align 4
  %28 = load %struct.connection*, %struct.connection** %2, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %9
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, %struct.connection*) #1

declare dso_local i32 @clear_connection_timeout(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

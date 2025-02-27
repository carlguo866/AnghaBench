; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_redis.c_send_command.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_redis.c_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to create command\00", align 1
@H2O_REDIS_CONNECTION_STATE_CLOSED = common dso_local global i64 0, align 8
@h2o_redis_error_connection = common dso_local global i8* null, align 8
@H2O_REDIS_COMMAND_TYPE_MONITOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Unsupported command\00", align 1
@on_command = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to send command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i64)* @send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_command(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = call i32 @handle_reply(%struct.TYPE_7__* %13, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %49

15:                                               ; preds = %4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @H2O_REDIS_CONNECTION_STATE_CLOSED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = load i8*, i8** @h2o_redis_error_connection, align 8
  %24 = call i32 @handle_reply(%struct.TYPE_7__* %22, i32* null, i8* %23)
  br label %49

25:                                               ; preds = %15
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @H2O_REDIS_COMMAND_TYPE_MONITOR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = call i32 @handle_reply(%struct.TYPE_7__* %32, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %49

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @on_command, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @redisAsyncFormattedCommand(i32 %37, i32 %38, %struct.TYPE_7__* %39, i8* %40, i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @REDIS_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = call i32 @handle_reply(%struct.TYPE_7__* %47, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %12, %21, %31, %46, %34
  ret void
}

declare dso_local i32 @handle_reply(%struct.TYPE_7__*, i32*, i8*) #1

declare dso_local i32 @redisAsyncFormattedCommand(i32, i32, %struct.TYPE_7__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

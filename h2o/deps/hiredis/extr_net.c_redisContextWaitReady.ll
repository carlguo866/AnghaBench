; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_net.c_redisContextWaitReady.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_net.c_redisContextWaitReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pollfd = type { i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"poll(2)\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@REDIS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @redisContextWaitReady to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redisContextWaitReady(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [1 x %struct.pollfd], align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %12 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @POLLOUT, align 4
  %14 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EINPROGRESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %2
  %20 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @poll(%struct.pollfd* %20, i32 1, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = load i32, i32* @REDIS_ERR_IO, align 4
  %27 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_6__* %25, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = call i32 @redisContextCloseFd(%struct.TYPE_6__* %28)
  %30 = load i32, i32* @REDIS_ERR, align 4
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %35, i64* @errno, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load i32, i32* @REDIS_ERR_IO, align 4
  %38 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_6__* %36, i32 %37, i8* null)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = call i32 @redisContextCloseFd(%struct.TYPE_6__* %39)
  %41 = load i32, i32* @REDIS_ERR, align 4
  store i32 %41, i32* %3, align 4
  br label %60

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = call i64 @redisCheckSocketError(%struct.TYPE_6__* %44)
  %46 = load i64, i64* @REDIS_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @REDIS_ERR, align 4
  store i32 %49, i32* %3, align 4
  br label %60

50:                                               ; preds = %43
  %51 = load i64, i64* @REDIS_OK, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = load i32, i32* @REDIS_ERR_IO, align 4
  %56 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_6__* %54, i32 %55, i8* null)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = call i32 @redisContextCloseFd(%struct.TYPE_6__* %57)
  %59 = load i32, i32* @REDIS_ERR, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %50, %48, %34, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i64) #1

declare dso_local i32 @__redisSetErrorFromErrno(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @redisContextCloseFd(%struct.TYPE_6__*) #1

declare dso_local i64 @redisCheckSocketError(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

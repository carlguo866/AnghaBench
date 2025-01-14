; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_redisSupervisedUpstart.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_redisSupervisedUpstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"UPSTART_JOB\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"upstart supervision requested, but UPSTART_JOB not found\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"supervised by upstart, will stop to signal readiness\00", align 1
@SIGSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisSupervisedUpstart() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @LL_WARNING, align 4
  %8 = call i32 @serverLog(i32 %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @LL_NOTICE, align 4
  %11 = call i32 @serverLog(i32 %10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @SIGSTOP, align 4
  %13 = call i32 @raise(i32 %12)
  %14 = call i32 @unsetenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %15

15:                                               ; preds = %9, %6
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @serverLog(i32, i8*) #1

declare dso_local i32 @raise(i32) #1

declare dso_local i32 @unsetenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_hiredis.c___redisAppendCommand.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_hiredis.c___redisAppendCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@REDIS_ERR_OOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__redisAppendCommand(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32* @sdscatlen(i32* %11, i8* %12, i64 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = load i32, i32* @REDIS_ERR_OOM, align 4
  %20 = call i32 @__redisSetError(%struct.TYPE_4__* %18, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @REDIS_ERR, align 4
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @REDIS_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32* @sdscatlen(i32*, i8*, i64) #1

declare dso_local i32 @__redisSetError(%struct.TYPE_4__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

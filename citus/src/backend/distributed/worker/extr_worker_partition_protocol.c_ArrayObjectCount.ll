; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_ArrayObjectCount.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_ArrayObjectCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_ARRAY_SUBSCRIPT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"worker array object cannot be empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayObjectCount(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ARR_NDIM(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @ARR_DIMS(i32* %9)
  store i32* %10, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ArrayGetNItems(i32 %19, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @ereport(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %14
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ArrayGetNItems(i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

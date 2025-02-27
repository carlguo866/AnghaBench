; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ReportConnectionError.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ReportConnectionError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32* }

@ERRCODE_CONNECTION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"connection error: %s:%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReportConnectionError(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @PQerrorMessage(i32* %21)
  %23 = call i8* @pchomp(i32 %22)
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @ApplyLogRedaction(i8* %34)
  %36 = call i32 @errdetail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %38

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 0, %37 ]
  %40 = call i32 @ereport(i32 %25, i32 %39)
  ret void
}

declare dso_local i8* @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @errdetail(i8*, i32) #1

declare dso_local i32 @ApplyLogRedaction(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

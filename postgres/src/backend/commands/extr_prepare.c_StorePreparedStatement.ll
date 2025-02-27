; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_prepare.c_StorePreparedStatement.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_prepare.c_StorePreparedStatement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@prepared_queries = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_PSTATEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"prepared statement \22%s\22 already exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StorePreparedStatement(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 (...) @GetCurrentStatementStartTimestamp()
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @prepared_queries, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 (...) @InitQueryHashTable()
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32, i32* @prepared_queries, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @HASH_ENTER, align 4
  %19 = call i64 @hash_search(i32 %16, i8* %17, i32 %18, i32* %9)
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_DUPLICATE_PSTATEMENT, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @ereport(i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %23, %15
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @SaveCachedPlan(i32* %40)
  ret void
}

declare dso_local i32 @GetCurrentStatementStartTimestamp(...) #1

declare dso_local i32 @InitQueryHashTable(...) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @SaveCachedPlan(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

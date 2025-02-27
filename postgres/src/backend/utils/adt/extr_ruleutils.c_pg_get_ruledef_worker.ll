; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_pg_get_ruledef_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_pg_get_ruledef_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64, i8* }

@SPI_OK_CONNECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SPI_connect failed\00", align 1
@plan_getrulebyoid = common dso_local global i32* null, align 8
@OIDOID = common dso_local global i32 0, align 4
@query_getrulebyoid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SPI_prepare failed for \22%s\22\00", align 1
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to get pg_rewrite tuple for rule %u\00", align 1
@SPI_processed = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global %struct.TYPE_6__* null, align 8
@SPI_OK_FINISH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"SPI_finish failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @pg_get_ruledef_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pg_get_ruledef_worker(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca [1 x i32], align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = call i32 @initStringInfo(%struct.TYPE_5__* %11)
  %15 = call i64 (...) @SPI_connect()
  %16 = load i64, i64* @SPI_OK_CONNECT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = call i32 (i32, i8*, ...) @elog(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32*, i32** @plan_getrulebyoid, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* @OIDOID, align 4
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @query_getrulebyoid, align 4
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %29 = call i32* @SPI_prepare(i32 %27, i32 1, i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @query_getrulebyoid, align 4
  %35 = call i32 (i32, i8*, ...) @elog(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @SPI_keepplan(i32* %37)
  %39 = load i32*, i32** %13, align 8
  store i32* %39, i32** @plan_getrulebyoid, align 8
  br label %40

40:                                               ; preds = %36, %21
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ObjectIdGetDatum(i32 %41)
  %43 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  store i8 32, i8* %44, align 1
  %45 = load i32*, i32** @plan_getrulebyoid, align 8
  %46 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %48 = call i32 @SPI_execute_plan(i32* %45, i32* %46, i8* %47, i32 1, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SPI_OK_SELECT, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i32, i8*, ...) @elog(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %40
  %57 = load i32, i32* @SPI_processed, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %73

60:                                               ; preds = %56
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @make_ruledef(%struct.TYPE_5__* %11, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %60, %59
  %74 = call i64 (...) @SPI_finish()
  %75 = load i64, i64* @SPI_OK_FINISH, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @ERROR, align 4
  %79 = call i32 (i32, i8*, ...) @elog(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i8* null, i8** %3, align 8
  br label %88

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %3, align 8
  br label %88

88:                                               ; preds = %85, %84
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

declare dso_local i32 @initStringInfo(%struct.TYPE_5__*) #1

declare dso_local i64 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32* @SPI_prepare(i32, i32, i32*) #1

declare dso_local i32 @SPI_keepplan(i32*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @SPI_execute_plan(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @make_ruledef(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i64 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

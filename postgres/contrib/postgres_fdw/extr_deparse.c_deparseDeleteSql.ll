; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseDeleteSql.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseDeleteSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"DELETE FROM \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" WHERE ctid = $1\00", align 1
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deparseDeleteSql(i32 %0, i32* %1, i32 %2, %struct.TYPE_7__* %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32** %5, i32*** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @appendStringInfoString(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = call i32 @deparseRelation(i32 %15, %struct.TYPE_7__* %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @appendStringInfoString(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %6
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %6
  %36 = phi i1 [ false, %6 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @NIL, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32**, i32*** %12, align 8
  %41 = call i32 @deparseReturningList(i32 %20, i32* %21, i32 %22, %struct.TYPE_7__* %23, i32 %37, i32 %38, i32* %39, i32** %40)
  ret void
}

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @deparseRelation(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @deparseReturningList(i32, i32*, i32, %struct.TYPE_7__*, i32, i32, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

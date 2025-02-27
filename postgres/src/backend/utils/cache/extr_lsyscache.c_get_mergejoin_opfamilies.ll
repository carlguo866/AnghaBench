; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_mergejoin_opfamilies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_mergejoin_opfamilies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@NIL = common dso_local global i32* null, align 8
@AMOPOPID = common dso_local global i32 0, align 4
@BTREE_AM_OID = common dso_local global i64 0, align 8
@BTEqualStrategyNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_mergejoin_opfamilies(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32*, i32** @NIL, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* @AMOPOPID, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ObjectIdGetDatum(i32 %10)
  %12 = call %struct.TYPE_8__* @SearchSysCacheList1(i32 %9, i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %50, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @GETSTRUCT(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %7, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BTREE_AM_OID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %19
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BTEqualStrategyNumber, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @lappend_oid(i32* %44, i32 %47)
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %43, %37, %19
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %13

53:                                               ; preds = %13
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = call i32 @ReleaseSysCacheList(%struct.TYPE_8__* %54)
  %56 = load i32*, i32** %3, align 8
  ret i32* %56
}

declare dso_local %struct.TYPE_8__* @SearchSysCacheList1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @ReleaseSysCacheList(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

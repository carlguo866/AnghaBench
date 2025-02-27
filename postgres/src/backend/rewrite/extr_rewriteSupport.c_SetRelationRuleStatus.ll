; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteSupport.c_SetRelationRuleStatus.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteSupport.c_SetRelationRuleStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetRelationRuleStatus(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @RelationRelationId, align 4
  %9 = load i32, i32* @RowExclusiveLock, align 4
  %10 = call i32 @table_open(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @RELOID, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call %struct.TYPE_9__* @SearchSysCacheCopy1(i32 %11, i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = call i32 @HeapTupleIsValid(%struct.TYPE_9__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = call i64 @GETSTRUCT(%struct.TYPE_9__* %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = call i32 @CatalogTupleUpdate(i32 %35, i32* %37, %struct.TYPE_9__* %38)
  br label %43

40:                                               ; preds = %22
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = call i32 @CacheInvalidateRelcacheByTuple(%struct.TYPE_9__* %41)
  br label %43

43:                                               ; preds = %40, %31
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = call i32 @heap_freetuple(%struct.TYPE_9__* %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @RowExclusiveLock, align 4
  %48 = call i32 @table_close(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_9__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_9__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_9__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @CacheInvalidateRelcacheByTuple(%struct.TYPE_9__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_9__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

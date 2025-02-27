; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_DeleteSharedComments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_DeleteSharedComments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@Anum_pg_shdescription_objoid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_shdescription_classoid = common dso_local global i32 0, align 4
@SharedDescriptionRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SharedDescriptionObjIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteSharedComments(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* @Anum_pg_shdescription_objoid, align 4
  %11 = load i32, i32* @BTEqualStrategyNumber, align 4
  %12 = load i32, i32* @F_OIDEQ, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ObjectIdGetDatum(i32 %13)
  %15 = call i32 @ScanKeyInit(i32* %9, i32 %10, i32 %11, i32 %12, i32 %14)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %17 = load i32, i32* @Anum_pg_shdescription_classoid, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_OIDEQ, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ObjectIdGetDatum(i32 %20)
  %22 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* @SharedDescriptionRelationId, align 4
  %24 = load i32, i32* @RowExclusiveLock, align 4
  %25 = call i32 @table_open(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SharedDescriptionObjIndexId, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %29 = call i32 @systable_beginscan(i32 %26, i32 %27, i32 1, i32* null, i32 2, i32* %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %34, %2
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.TYPE_3__* @systable_getnext(i32 %31)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %8, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @CatalogTupleDelete(i32 %35, i32* %37)
  br label %30

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @systable_endscan(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RowExclusiveLock, align 4
  %44 = call i32 @table_close(i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @systable_getnext(i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ColumnAppearsInForeignKeyToReferenceTable.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_foreign_constraint.c_ColumnAppearsInForeignKeyToReferenceTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_contype = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_CHAREQ = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@Anum_pg_constraint_confkey = common dso_local global i32 0, align 4
@Anum_pg_constraint_conkey = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ColumnAppearsInForeignKeyToReferenceTable(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @ConstraintRelationId, align 4
  %16 = load i32, i32* @AccessShareLock, align 4
  %17 = call i32* @heap_open(i32 %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %19 = load i32, i32* @Anum_pg_constraint_contype, align 4
  %20 = load i32, i32* @BTEqualStrategyNumber, align 4
  %21 = load i32, i32* @F_CHAREQ, align 4
  %22 = load i32, i32* @CONSTRAINT_FOREIGN, align 4
  %23 = call i32 @CharGetDatum(i32 %22)
  %24 = call i32 @ScanKeyInit(i32* %18, i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @InvalidOid, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %29 = call i32* @systable_beginscan(i32* %25, i32 %26, i32 0, i32* null, i32 %27, i32* %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @systable_getnext(i32* %30)
  store i32* %31, i32** %9, align 8
  br label %32

32:                                               ; preds = %83, %72, %60, %2
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @HeapTupleIsValid(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %32
  %37 = load i32, i32* @InvalidOid, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @InvalidOid, align 4
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @GETSTRUCT(i32* %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %14, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* @Anum_pg_constraint_confkey, align 4
  store i32 %53, i32* %13, align 4
  br label %64

54:                                               ; preds = %36
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @Anum_pg_constraint_conkey, align 4
  store i32 %59, i32* %13, align 4
  br label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = call i32* @systable_getnext(i32* %61)
  store i32* %62, i32** %9, align 8
  br label %32

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @IsDistributedTable(i32 %65)
  %67 = call i32 @Assert(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @PartitionMethod(i32 %68)
  %70 = load i64, i64* @DISTRIBUTE_BY_NONE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32*, i32** %6, align 8
  %74 = call i32* @systable_getnext(i32* %73)
  store i32* %74, i32** %9, align 8
  br label %32

75:                                               ; preds = %64
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = call i64 @HeapTupleOfForeignConstraintIncludesColumn(i32* %76, i32 %77, i32 %78, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %10, align 4
  br label %86

83:                                               ; preds = %75
  %84 = load i32*, i32** %6, align 8
  %85 = call i32* @systable_getnext(i32* %84)
  store i32* %85, i32** %9, align 8
  br label %32

86:                                               ; preds = %82, %32
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @systable_endscan(i32* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @AccessShareLock, align 4
  %91 = call i32 @heap_close(i32* %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CharGetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local i64 @PartitionMethod(i32) #1

declare dso_local i64 @HeapTupleOfForeignConstraintIncludesColumn(i32*, i32, i32, i8*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_largeobject.c_LargeObjectExists.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_largeobject.c_LargeObjectExists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_pg_largeobject_metadata_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@LargeObjectMetadataRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@LargeObjectMetadataOidIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LargeObjectExists(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %9 = load i32, i32* @Anum_pg_largeobject_metadata_oid, align 4
  %10 = load i32, i32* @BTEqualStrategyNumber, align 4
  %11 = load i32, i32* @F_OIDEQ, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call i32 @ScanKeyInit(i32* %8, i32 %9, i32 %10, i32 %11, i32 %13)
  %15 = load i32, i32* @LargeObjectMetadataRelationId, align 4
  %16 = load i32, i32* @AccessShareLock, align 4
  %17 = call i32 @table_open(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @LargeObjectMetadataOidIndexId, align 4
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %21 = call i32 @systable_beginscan(i32 %18, i32 %19, i32 1, i32* null, i32 1, i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @systable_getnext(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @HeapTupleIsValid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @systable_endscan(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @AccessShareLock, align 4
  %33 = call i32 @table_close(i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

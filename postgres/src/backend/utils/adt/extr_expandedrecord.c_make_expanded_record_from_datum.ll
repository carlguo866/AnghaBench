; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_make_expanded_record_from_datum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandedrecord.c_make_expanded_record_from_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"expanded record\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@ER_methods = common dso_local global i32 0, align 4
@ER_MAGIC = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ER_FLAG_FVALUE_ALLOCED = common dso_local global i32 0, align 4
@ER_FLAG_FVALUE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_expanded_record_from_datum(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %13 = call i32 @AllocSetContextCreate(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @MemoryContextAllocZero(i32 %14, i32 48)
  %16 = inttoptr i64 %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @EOH_init_header(i32* %18, i32* @ER_methods, i32 %19)
  %21 = load i32, i32* @ER_MAGIC, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @DatumGetHeapTupleHeader(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @HeapTupleHeaderGetDatumLength(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %30 = call i32 @ItemPointerSetInvalid(i32* %29)
  %31 = load i32, i32* @InvalidOid, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @MemoryContextSwitchTo(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = call %struct.TYPE_7__* @heap_copytuple(%struct.TYPE_6__* %7)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %8, align 8
  %38 = load i32, i32* @ER_FLAG_FVALUE_ALLOCED, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @MemoryContextSwitchTo(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @HeapTupleHeaderGetTypeId(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 7
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @HeapTupleHeaderGetTypMod(i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @ER_FLAG_FVALUE_VALID, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @HeapTupleHeaderHasExternal(i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = call i32 @EOHPGetRWDatum(i32* %87)
  ret i32 %88
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @EOH_init_header(i32*, i32*, i32) #1

declare dso_local i32 @DatumGetHeapTupleHeader(i32) #1

declare dso_local i32 @HeapTupleHeaderGetDatumLength(i32) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_7__* @heap_copytuple(%struct.TYPE_6__*) #1

declare dso_local i32 @HeapTupleHeaderGetTypeId(i32) #1

declare dso_local i32 @HeapTupleHeaderGetTypMod(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @HeapTupleHeaderHasExternal(i32) #1

declare dso_local i32 @EOHPGetRWDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

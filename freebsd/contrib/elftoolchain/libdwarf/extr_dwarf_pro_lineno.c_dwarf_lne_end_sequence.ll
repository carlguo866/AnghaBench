; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_lineno.c_dwarf_lne_end_sequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_lineno.c_dwarf_lne_end_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_NOCOUNT = common dso_local global i32 0, align 4
@_Dwarf_Line = common dso_local global i32 0, align 4
@ln_next = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_lne_end_sequence(%struct.TYPE_9__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %16 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %13, i32* %14, i32 %15)
  %17 = load i32, i32* @DW_DLV_NOCOUNT, align 4
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* @_Dwarf_Line, align 4
  %25 = load i32, i32* @ln_next, align 4
  %26 = call %struct.TYPE_11__* @STAILQ_LAST(i32* %23, i32 %24, i32 %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %9, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %18
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %39 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %36, i32* %37, i32 %38)
  %40 = load i32, i32* @DW_DLV_NOCOUNT, align 4
  store i32 %40, i32* %4, align 4
  br label %69

41:                                               ; preds = %29, %18
  %42 = call %struct.TYPE_11__* @calloc(i32 1, i32 4)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %9, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @DW_DLE_MEMORY, align 4
  %48 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %45, i32* %46, i32 %47)
  %49 = load i32, i32* @DW_DLV_NOCOUNT, align 4
  store i32 %49, i32* %4, align 4
  br label %69

50:                                               ; preds = %41
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %53, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = load i32, i32* @ln_next, align 4
  %63 = call i32 @STAILQ_INSERT_TAIL(i32* %60, %struct.TYPE_11__* %61, i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %50, %44, %35, %12
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @STAILQ_LAST(i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @calloc(i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

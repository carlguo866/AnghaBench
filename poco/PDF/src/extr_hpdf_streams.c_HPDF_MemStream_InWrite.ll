; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_MemStream_InWrite.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_MemStream_InWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32*, i32 }

@.str = private unnamed_addr constant [25 x i8] c" HPDF_MemStream_InWrite\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_MemStream_InWrite(%struct.TYPE_4__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %9, align 8
  %22 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* @HPDF_OK, align 8
  store i64 %27, i64* %4, align 8
  br label %123

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %29, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32**, i32*** %6, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @HPDF_MemCpy(i32* %36, i32* %38, i64 %40)
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %43
  store i32* %47, i32** %45, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 0, i64* %54, align 8
  br label %121

55:                                               ; preds = %28
  %56 = load i64, i64* %9, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32**, i32*** %6, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @HPDF_MemCpy(i32* %61, i32* %63, i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = load i32**, i32*** %6, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 %66
  store i32* %69, i32** %67, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64*, i64** %7, align 8
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, %70
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %58, %55
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @HPDF_GetMem(i32 %77, i64 %80)
  %82 = inttoptr i64 %81 to i32*
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @HPDF_Error_GetCode(i32 %92)
  store i64 %93, i64* %4, align 8
  br label %123

94:                                               ; preds = %74
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @HPDF_List_Add(i32 %97, i32* %100)
  %102 = load i64, i64* @HPDF_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %94
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @HPDF_FreeMem(i32 %107, i32* %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @HPDF_Error_GetCode(i32 %116)
  store i64 %117, i64* %4, align 8
  br label %123

118:                                              ; preds = %94
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %33
  %122 = load i64, i64* @HPDF_OK, align 8
  store i64 %122, i64* %4, align 8
  br label %123

123:                                              ; preds = %121, %104, %89, %26
  %124 = load i64, i64* %4, align 8
  ret i64 %124
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_MemCpy(i32*, i32*, i64) #1

declare dso_local i64 @HPDF_GetMem(i32, i64) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_List_Add(i32, i32*) #1

declare dso_local i32 @HPDF_FreeMem(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

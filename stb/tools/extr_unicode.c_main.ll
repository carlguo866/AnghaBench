; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_unicode.c_main.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_unicode.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"../../data/UnicodeData.txt\00", align 1
@unicode_table = common dso_local global i32* null, align 8
@UVAL_DONT_CARE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"stbu_upppercase\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = call i8** @stb_stringfile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i8** %15, i8*** %10, align 8
  %16 = load i8**, i8*** %10, align 8
  %17 = call i32 @assert(i8** %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %111, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %114

22:                                               ; preds = %18
  %23 = load i8**, i8*** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 35
  br i1 %31, label %52, label %32

32:                                               ; preds = %22
  %33 = load i8**, i8*** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = load i8**, i8*** %10, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42, %32, %22
  br label %110

53:                                               ; preds = %42
  %54 = load i8**, i8*** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @get_range(i8* %58)
  %60 = bitcast %struct.TYPE_6__* %11 to i64*
  store i64 %59, i64* %60, align 4
  %61 = load i8**, i8*** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @skip_semi(i8* %65, i32 13)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 59
  br i1 %70, label %81, label %71

71:                                               ; preds = %53
  %72 = load i8*, i8** %12, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %12, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71, %53
  store i32 0, i32* %14, align 4
  br label %109

82:                                               ; preds = %76
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @strtol(i8* %83, i32* null, i32 16)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 65536
  br i1 %86, label %87, label %108

87:                                               ; preds = %82
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @stb_max(i32 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %104, %87
  %94 = load i32, i32* %13, align 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %94, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i32, i32* %14, align 4
  %100 = load i32*, i32** @unicode_table, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %93

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %82
  br label %109

109:                                              ; preds = %108, %81
  br label %110

110:                                              ; preds = %109, %52
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %18

114:                                              ; preds = %18
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 10
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* @UVAL_DONT_CARE_DEFAULT, align 4
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 9
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 8
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 256, i32* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 7
  store i64 0, i64* %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 6
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  store i64 0, i64* %122, align 8
  %123 = load i32*, i32** @unicode_table, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32* %123, i32** %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @size_for_max_number(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i32 %126, i32* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 1114112, i32* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i32 1, i32* %129, align 4
  %130 = call i32 @optimize_table(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i8** @stb_stringfile(i8*, i32*) #1

declare dso_local i32 @assert(i8**) #1

declare dso_local i64 @get_range(i8*) #1

declare dso_local i8* @skip_semi(i8*, i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @stb_max(i32, i32) #1

declare dso_local i32 @size_for_max_number(i32) #1

declare dso_local i32 @optimize_table(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_CCtxParam_getParameter.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_CCtxParam_getParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }

@parameter_unsupported = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_CCtxParam_getParameter(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %142 [
    i32 142, label %9
    i32 148, label %14
    i32 128, label %19
    i32 141, label %25
    i32 150, label %31
    i32 131, label %37
    i32 135, label %43
    i32 129, label %49
    i32 130, label %55
    i32 147, label %61
    i32 149, label %67
    i32 146, label %73
    i32 143, label %82
    i32 144, label %87
    i32 134, label %92
    i32 140, label %103
    i32 133, label %106
    i32 132, label %109
    i32 145, label %112
    i32 138, label %118
    i32 136, label %124
    i32 139, label %130
    i32 137, label %136
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  br label %145

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  br label %145

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %145

25:                                               ; preds = %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 10
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %145

31:                                               ; preds = %3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %145

37:                                               ; preds = %3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %145

43:                                               ; preds = %3
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 10
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %145

49:                                               ; preds = %3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 10
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %145

55:                                               ; preds = %3
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 10
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %145

61:                                               ; preds = %3
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  br label %145

67:                                               ; preds = %3
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %145

73:                                               ; preds = %3
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 9
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  br label %145

82:                                               ; preds = %3
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  br label %145

87:                                               ; preds = %3
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  br label %145

92:                                               ; preds = %3
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %145

103:                                              ; preds = %3
  %104 = load i32, i32* @parameter_unsupported, align 4
  %105 = call i64 @ERROR(i32 %104)
  store i64 %105, i64* %4, align 8
  br label %146

106:                                              ; preds = %3
  %107 = load i32, i32* @parameter_unsupported, align 4
  %108 = call i64 @ERROR(i32 %107)
  store i64 %108, i64* %4, align 8
  br label %146

109:                                              ; preds = %3
  %110 = load i32, i32* @parameter_unsupported, align 4
  %111 = call i64 @ERROR(i32 %110)
  store i64 %111, i64* %4, align 8
  br label %146

112:                                              ; preds = %3
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  br label %145

118:                                              ; preds = %3
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %7, align 8
  store i32 %122, i32* %123, align 4
  br label %145

124:                                              ; preds = %3
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  br label %145

130:                                              ; preds = %3
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %7, align 8
  store i32 %134, i32* %135, align 4
  br label %145

136:                                              ; preds = %3
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %7, align 8
  store i32 %140, i32* %141, align 4
  br label %145

142:                                              ; preds = %3
  %143 = load i32, i32* @parameter_unsupported, align 4
  %144 = call i64 @ERROR(i32 %143)
  store i64 %144, i64* %4, align 8
  br label %146

145:                                              ; preds = %136, %130, %124, %118, %112, %92, %87, %82, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %14, %9
  store i64 0, i64* %4, align 8
  br label %146

146:                                              ; preds = %145, %142, %109, %106, %103
  %147 = load i64, i64* %4, align 8
  ret i64 %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

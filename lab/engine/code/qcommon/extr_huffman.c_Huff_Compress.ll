; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_huffman.c_Huff_Compress.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_huffman.c_Huff_Compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i64, i32*, i32, i32, i32*, i32, i64 }

@NYT = common dso_local global i64 0, align 8
@bloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Huff_Compress(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [65536 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %116

25:                                               ; preds = %2
  %26 = call i32 @Com_Memset(%struct.TYPE_10__* %10, i32 0, i32 40)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %34, align 8
  %36 = load i64, i64* @NYT, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %35, i64 %36
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %39, align 8
  %40 = load i64, i64* @NYT, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 8
  %64 = getelementptr inbounds [65536 x i32], [65536 x i32]* %8, i64 0, i64 0
  store i32 %63, i32* %64, align 16
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds [65536 x i32], [65536 x i32]* %8, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  store i32 16, i32* @bloc, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %85, %25
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = getelementptr inbounds [65536 x i32], [65536 x i32]* %8, i64 0, i64 0
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 %80, 3
  %82 = call i32 @Huff_transmit(%struct.TYPE_10__* %10, i32 %78, i32* %79, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @Huff_addRef(%struct.TYPE_10__* %10, i32 %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %68

88:                                               ; preds = %68
  %89 = load i32, i32* @bloc, align 4
  %90 = srem i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* @bloc, align 4
  %94 = sdiv i32 %93, 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [65536 x i32], [65536 x i32]* %8, i64 0, i64 %95
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %88
  %98 = load i32, i32* @bloc, align 4
  %99 = add nsw i32 %98, 8
  store i32 %99, i32* @bloc, align 4
  %100 = load i32, i32* @bloc, align 4
  %101 = ashr i32 %100, 3
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %101, %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = getelementptr inbounds [65536 x i32], [65536 x i32]* %8, i64 0, i64 0
  %113 = load i32, i32* @bloc, align 4
  %114 = ashr i32 %113, 3
  %115 = call i32 @Com_Memcpy(i32* %111, i32* %112, i32 %114)
  br label %116

116:                                              ; preds = %97, %24
  ret void
}

declare dso_local i32 @Com_Memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @Huff_transmit(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i32 @Huff_addRef(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @Com_Memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

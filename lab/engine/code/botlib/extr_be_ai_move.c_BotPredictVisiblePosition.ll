; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotPredictVisiblePosition.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotPredictVisiblePosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MAX_AVOIDREACH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotPredictVisiblePosition(i32 %0, i32 %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* @MAX_AVOIDREACH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i32, i32* @MAX_AVOIDREACH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca float, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %30 = load i32, i32* @MAX_AVOIDREACH, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %147

37:                                               ; preds = %5
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %147

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %147

49:                                               ; preds = %42
  %50 = load i32, i32* @MAX_AVOIDREACH, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @Com_Memset(i32* %26, i32 0, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @VectorCopy(i32 %59, i32 %60)
  store i32 0, i32* %16, align 4
  br label %62

62:                                               ; preds = %142, %49
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %63, 20
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i1 [ false, %62 ], [ %70, %65 ]
  br i1 %72, label %73, label %145

73:                                               ; preds = %71
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @BotGetReachabilityToGoal(i32 %74, i32 %75, i32 %76, i32 %77, i32* %26, float* %29, i32* %32, %struct.TYPE_6__* %78, i32 %79, i32* null, i32 0, i32* null)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* @qfalse, align 4
  store i32 %84, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %147

85:                                               ; preds = %73
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @AAS_ReachabilityFromNum(i32 %86, %struct.TYPE_7__* %12)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @BotVisible(i32 %90, i32 %93, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @VectorCopy(i32 %100, i32 %101)
  %103 = load i32, i32* @qtrue, align 4
  store i32 %103, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %147

104:                                              ; preds = %85
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @BotVisible(i32 %107, i32 %110, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @VectorCopy(i32 %117, i32 %118)
  %120 = load i32, i32* @qtrue, align 4
  store i32 %120, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %147

121:                                              ; preds = %104
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @VectorCopy(i32 %130, i32 %131)
  %133 = load i32, i32* @qtrue, align 4
  store i32 %133, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %147

134:                                              ; preds = %121
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %15, align 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %8, align 4
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %21, align 4
  %141 = call i32 @VectorCopy(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %62

145:                                              ; preds = %71
  %146 = load i32, i32* @qfalse, align 4
  store i32 %146, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %147

147:                                              ; preds = %145, %128, %115, %98, %83, %47, %40, %35
  %148 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @BotGetReachabilityToGoal(i32, i32, i32, i32, i32*, float*, i32*, %struct.TYPE_6__*, i32, i32*, i32, i32*) #2

declare dso_local i32 @AAS_ReachabilityFromNum(i32, %struct.TYPE_7__*) #2

declare dso_local i64 @BotVisible(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

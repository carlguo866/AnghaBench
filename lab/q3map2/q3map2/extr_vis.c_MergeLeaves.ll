; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_MergeLeaves.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_vis.c_MergeLeaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i64, i64 }

@portalclusters = common dso_local global i32 0, align 4
@leafs = common dso_local global %struct.TYPE_5__* null, align 8
@hint = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%6d leaves merged\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MergeLeaves() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %75, %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %68, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @portalclusters, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %71

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @leafs, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i64, i64* @hint, align 8
  %23 = load i64, i64* @qfalse, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %68

26:                                               ; preds = %21, %12
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %6, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %64

46:                                               ; preds = %33
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %64

52:                                               ; preds = %46
  %53 = load i32, i32* %1, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @TryMergeLeaves(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = call i32 (...) @UpdatePortals()
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %51, %45
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %27

67:                                               ; preds = %59, %27
  br label %68

68:                                               ; preds = %67, %25
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %8

71:                                               ; preds = %8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %7, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %79)
  ret void
}

declare dso_local i64 @TryMergeLeaves(i32, i32) #1

declare dso_local i32 @UpdatePortals(...) #1

declare dso_local i32 @Sys_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

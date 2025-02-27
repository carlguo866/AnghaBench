; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_postorder.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_postorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@REG_NOERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64 (i8*, %struct.TYPE_5__*)*, i8*)* @postorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @postorder(%struct.TYPE_5__* %0, i64 (i8*, %struct.TYPE_5__*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64 (i8*, %struct.TYPE_5__*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 (i8*, %struct.TYPE_5__*)* %1, i64 (i8*, %struct.TYPE_5__*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  br label %12

12:                                               ; preds = %78, %3
  br label %13

13:                                               ; preds = %38, %12
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ true, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %39

25:                                               ; preds = %23
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %8, align 8
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %8, align 8
  br label %38

38:                                               ; preds = %34, %30
  br label %13

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %76, %39
  %41 = load i64 (i8*, %struct.TYPE_5__*)*, i64 (i8*, %struct.TYPE_5__*)** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = call i64 %41(i8* %42, %struct.TYPE_5__* %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @REG_NOERROR, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @BE(i32 %48, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %4, align 8
  br label %82

53:                                               ; preds = %40
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = icmp eq %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @REG_NOERROR, align 8
  store i64 %59, i64* %4, align 8
  br label %82

60:                                               ; preds = %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %8, align 8
  br label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = icmp eq %struct.TYPE_5__* %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = icmp eq %struct.TYPE_5__* %74, null
  br label %76

76:                                               ; preds = %71, %65
  %77 = phi i1 [ true, %65 ], [ %75, %71 ]
  br i1 %77, label %40, label %78

78:                                               ; preds = %76
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %8, align 8
  br label %12

82:                                               ; preds = %58, %51
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i64 @BE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

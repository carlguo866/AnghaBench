; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_HashListToArray.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_HashListToArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @HashListToArray(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8** null, i8*** %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i64*, i64** %5, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14, %2
  %18 = load i64*, i64** %5, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64*, i64** %5, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %20, %17
  store i8** null, i8*** %3, align 8
  br label %89

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @LIST_NUM(i32* %31)
  %33 = load i64*, i64** %5, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i8** @ToArray(i32* %36)
  store i8** %37, i8*** %3, align 8
  br label %89

38:                                               ; preds = %23
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8** @ZeroMalloc(i32 %44)
  store i8** %45, i8*** %6, align 8
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %82, %38
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %46
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %52
  store i64 0, i64* %10, align 8
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i64, i64* %10, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @LIST_NUM(i32* %64)
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load i32*, i32** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i8* @LIST_DATA(i32* %68, i64 %69)
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8**, i8*** %6, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  store i8* %71, i8** %74, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %67
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %10, align 8
  br label %62

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %46

85:                                               ; preds = %46
  %86 = load i64, i64* %8, align 8
  %87 = load i64*, i64** %5, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i8**, i8*** %6, align 8
  store i8** %88, i8*** %3, align 8
  br label %89

89:                                               ; preds = %85, %28, %22
  %90 = load i8**, i8*** %3, align 8
  ret i8** %90
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i8** @ToArray(i32*) #1

declare dso_local i8** @ZeroMalloc(i32) #1

declare dso_local i8* @LIST_DATA(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_DeleteHash.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_DeleteHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DeleteHash(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %80

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @CalcHashForHashList(%struct.TYPE_4__* %15, i8* %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %14
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @Delete(i32* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @LIST_NUM(i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ReleaseList(i32* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %49, %40
  br label %63

63:                                               ; preds = %62, %14
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call i64 @Delete(i32* %74, i8* %75)
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @CalcHashForHashList(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @Delete(i32*, i8*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_traditional.c__cpp_copy_replacement_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_traditional.c__cpp_copy_replacement_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__, i32**, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.block = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_cpp_copy_replacement_text(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %74

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  br label %22

22:                                               ; preds = %44, %17
  %23 = load i32*, i32** %5, align 8
  %24 = bitcast i32* %23 to %struct.block*
  store %struct.block* %24, %struct.block** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.block*, %struct.block** %6, align 8
  %27 = getelementptr inbounds %struct.block, %struct.block* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.block*, %struct.block** %6, align 8
  %30 = getelementptr inbounds %struct.block, %struct.block* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %25, i32* %28, i32 %31)
  %33 = load %struct.block*, %struct.block** %6, align 8
  %34 = getelementptr inbounds %struct.block, %struct.block* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %4, align 8
  %39 = load %struct.block*, %struct.block** %6, align 8
  %40 = getelementptr inbounds %struct.block, %struct.block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  br label %73

44:                                               ; preds = %22
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32**, i32*** %46, align 8
  %48 = load %struct.block*, %struct.block** %6, align 8
  %49 = getelementptr inbounds %struct.block, %struct.block* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %47, i64 %52
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32* @NODE_NAME(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @NODE_LEN(i32* %58)
  %60 = call i32 @memcpy(i32* %55, i32* %57, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @NODE_LEN(i32* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %4, align 8
  %66 = load %struct.block*, %struct.block** %6, align 8
  %67 = getelementptr inbounds %struct.block, %struct.block* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BLOCK_LEN(i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %5, align 8
  br label %22

73:                                               ; preds = %43
  br label %90

74:                                               ; preds = %12, %2
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memcpy(i32* %75, i32* %79, i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %4, align 8
  br label %90

90:                                               ; preds = %74, %73
  %91 = load i32*, i32** %4, align 8
  ret i32* %91
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @NODE_NAME(i32*) #1

declare dso_local i32 @NODE_LEN(i32*) #1

declare dso_local i32 @BLOCK_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_libxml_domnode_binary_insertion_find.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_libxml_domnode_binary_insertion_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64)* @BINARY_INSERTION_FIND to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @BINARY_INSERTION_FIND(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = sub i64 %13, 1
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = lshr i64 %15, 1
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SORT_CMP(i32 %17, i32 %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %76

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SORT_CMP(i32 %25, i32 %29)
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %4, align 8
  br label %76

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %35, %65
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @SORT_CMP(i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %47, %48
  %50 = icmp ule i64 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %4, align 8
  br label %76

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %10, align 8
  br label %65

55:                                               ; preds = %40
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %56, %57
  %59 = icmp ule i64 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %76

63:                                               ; preds = %55
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %63, %53
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub i64 %67, %68
  %70 = lshr i64 %69, 1
  %71 = add i64 %66, %70
  store i64 %71, i64* %9, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  br label %40

76:                                               ; preds = %60, %51, %32, %23
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i32 @SORT_CMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

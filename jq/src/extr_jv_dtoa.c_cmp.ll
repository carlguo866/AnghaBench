; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_cmp.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }
%struct.TYPE_4__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtoa_context*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp(%struct.dtoa_context* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dtoa_context*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dtoa_context* %0, %struct.dtoa_context** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %9, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64* %33, i64** %8, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %11, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64* %40, i64** %10, align 8
  br label %41

41:                                               ; preds = %62, %26
  %42 = load i64*, i64** %8, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 -1
  store i64* %43, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 -1
  store i64* %46, i64** %10, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %51, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 -1, i32 1
  store i32 %56, i32* %4, align 4
  br label %64

57:                                               ; preds = %41
  %58 = load i64*, i64** %8, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = icmp ule i64* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %63

62:                                               ; preds = %57
  br label %41

63:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %49, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

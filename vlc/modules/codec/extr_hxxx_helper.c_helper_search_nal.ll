; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_search_nal.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_helper_search_nal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper_nal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hxxx_helper_nal* (%struct.hxxx_helper_nal*, i64, i64, i8*, i64)* @helper_search_nal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hxxx_helper_nal* @helper_search_nal(%struct.hxxx_helper_nal* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.hxxx_helper_nal*, align 8
  %7 = alloca %struct.hxxx_helper_nal*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.hxxx_helper_nal*, align 8
  %15 = alloca i32, align 4
  store %struct.hxxx_helper_nal* %0, %struct.hxxx_helper_nal** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %16

16:                                               ; preds = %61, %5
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ugt i64 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %26, label %64

26:                                               ; preds = %24
  %27 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %7, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %27, i64 %28
  store %struct.hxxx_helper_nal* %29, %struct.hxxx_helper_nal** %14, align 8
  %30 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %14, align 8
  %31 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp eq %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %61

35:                                               ; preds = %26
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %14, align 8
  %40 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %38, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %35
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %14, align 8
  %51 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i64 @memcmp(i8* %49, i32 %54, i64 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %14, align 8
  store %struct.hxxx_helper_nal* %59, %struct.hxxx_helper_nal** %6, align 8
  br label %65

60:                                               ; preds = %48, %35
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %13, align 8
  br label %16

64:                                               ; preds = %24
  store %struct.hxxx_helper_nal* null, %struct.hxxx_helper_nal** %6, align 8
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %6, align 8
  ret %struct.hxxx_helper_nal* %66
}

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

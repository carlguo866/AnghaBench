; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilcirclebuf.h_circlebuf_upsize.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utilcirclebuf.h_circlebuf_upsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circlebuf = type { i64, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.circlebuf*, i64)* @circlebuf_upsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circlebuf_upsize(%struct.circlebuf* %0, i64 %1) #0 {
  %3 = alloca %struct.circlebuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.circlebuf* %0, %struct.circlebuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %11 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %9, %12
  store i64 %13, i64* %5, align 8
  %14 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %15 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %21 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ule i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %84

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %28 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %30 = call i32 @circlebuf_ensure_capacity(%struct.circlebuf* %29)
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %33 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %25
  %37 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %38 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %41 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  %50 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %51 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %54 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @memset(i32* %56, i32 0, i64 %57)
  br label %59

59:                                               ; preds = %49, %36
  %60 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %61 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @memset(i32* %62, i32 0, i64 %63)
  %65 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %66 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %6, align 8
  br label %80

70:                                               ; preds = %25
  %71 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %72 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %75 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @memset(i32* %77, i32 0, i64 %78)
  br label %80

80:                                               ; preds = %70, %59
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.circlebuf*, %struct.circlebuf** %3, align 8
  %83 = getelementptr inbounds %struct.circlebuf, %struct.circlebuf* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %24
  ret void
}

declare dso_local i32 @circlebuf_ensure_capacity(%struct.circlebuf*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

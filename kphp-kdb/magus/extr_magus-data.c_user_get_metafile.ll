; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_user_get_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_user_get_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EMPTY__METAFILE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @user_get_metafile(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 0), align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 0), align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %9, %2
  %18 = phi i1 [ false, %9 ], [ false, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @header, i32 0, i32 0), align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i32* [ %31, %27 ], [ null, %32 ]
  store i32* %34, i32** %3, align 8
  br label %70

35:                                               ; preds = %17
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %64, %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 23
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 %59, 23
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32* %63, i32** %3, align 8
  br label %70

64:                                               ; preds = %44
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %6, align 8
  br label %40

67:                                               ; preds = %40
  %68 = load i64, i64* @EMPTY__METAFILE, align 8
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %67, %50, %33
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

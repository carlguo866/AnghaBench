; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_toast_helper.c_toast_delete_external.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_toast_helper.c_toast_delete_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toast_delete_external(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %56, %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_7__* %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %56

43:                                               ; preds = %30
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @PointerGetDatum(i32 %44)
  %46 = call i64 @VARATT_IS_EXTERNAL_ONDISK(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @toast_delete_datum(%struct.TYPE_8__* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %19

59:                                               ; preds = %19
  ret void
}

declare dso_local %struct.TYPE_9__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_ONDISK(i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @toast_delete_datum(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

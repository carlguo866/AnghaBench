; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_GetLine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_EM_GetLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i64*)* @EDIT_EM_GetLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EDIT_EM_GetLine(%struct.TYPE_5__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ES_MULTILINE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %62

25:                                               ; preds = %18
  br label %27

26:                                               ; preds = %3
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_5__* %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add nsw i64 %33, %34
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %10, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @EDIT_EM_LineLength(%struct.TYPE_5__* %37, i64 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load i64*, i64** %7, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = mul i64 %48, 4
  %50 = call i32 @memcpy(i64* %46, i64* %47, i64 %49)
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %4, align 8
  br label %62

52:                                               ; preds = %27
  %53 = load i64*, i64** %7, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = mul i64 %55, 4
  %57 = call i32 @memcpy(i64* %53, i64* %54, i64 %56)
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %52, %45, %24
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local i64 @EDIT_EM_LineIndex(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @EDIT_EM_LineLength(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

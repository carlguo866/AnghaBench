; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_iterate_section_fields.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_iterate_section_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"callback failed for %s %s err %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32*, i32 (i32, i32*, i8*)*, i8*)* @iterate_section_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iterate_section_fields(i32 %0, i32* %1, i32* %2, i32 (i32, i32*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32 (i32, i32*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [200 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 (i32, i32*, i8*)* %3, i32 (i32, i32*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  store i32* %19, i32** %12, align 8
  store i32 200, i32* %13, align 4
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %15, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @SetupFindFirstLineW(i32 %21, i32* %22, i32* %23, i32* %14)
  store i64 %24, i64* %16, align 8
  br label %25

25:                                               ; preds = %59, %5
  %26 = load i64, i64* %16, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = call i32 @SetupGetFieldCount(i32* %14)
  store i32 %29, i32* %18, align 4
  store i32 1, i32* %17, align 4
  br label %30

30:                                               ; preds = %56, %28
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i32, i32* %17, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  %38 = call i32* @get_field_string(i32* %14, i32 %35, i32* %36, i32* %37, i32* %13)
  store i32* %38, i32** %12, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %64

41:                                               ; preds = %34
  %42 = load i32 (i32, i32*, i8*)*, i32 (i32, i32*, i8*)** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 %42(i32 %43, i32* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @debugstr_w(i32* %49)
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @debugstr_w(i32* %51)
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52, i32 %53)
  br label %64

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @SetupFindNextMatchLineW(i32* %14, i32* %60, i32* %14)
  store i64 %61, i64* %16, align 8
  br label %25

62:                                               ; preds = %25
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %15, align 8
  br label %64

64:                                               ; preds = %62, %48, %40
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds [200 x i32], [200 x i32]* %11, i64 0, i64 0
  %67 = icmp ne i32* %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = call i32 (...) @GetProcessHeap()
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @HeapFree(i32 %69, i32 0, i32* %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i64, i64* %15, align 8
  ret i64 %73
}

declare dso_local i64 @SetupFindFirstLineW(i32, i32*, i32*, i32*) #1

declare dso_local i32 @SetupGetFieldCount(i32*) #1

declare dso_local i32* @get_field_string(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @WARN(i8*, i32, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @SetupFindNextMatchLineW(i32*, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_EnumDocumentMgr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_EnumDocumentMgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EnumDocumentMgrs failed\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Did not find proper ITfDocumentMgr\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Found an ITfDocumentMgr we should should not have\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Found an ITfDocumentMgr we believe should be absent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @test_EnumDocumentMgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnumDocumentMgr(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @ITfThreadMgr_EnumDocumentMgrs(i32* %15, i32** %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @SUCCEEDED(i32 %17)
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @SUCCEEDED(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @IEnumTfDocumentMgrs_Next(i32* %25, i32 1, i32** %12, i32* %11)
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %9, align 4
  br label %41

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp eq i32* %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %48, %44, %41
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @ITfDocumentMgr_Release(i32* %51)
  br label %24

53:                                               ; preds = %24
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @IEnumTfDocumentMgrs_Release(i32* %54)
  br label %56

56:                                               ; preds = %53, %3
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %68

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32*, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @ITfThreadMgr_EnumDocumentMgrs(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i64 @IEnumTfDocumentMgrs_Next(i32*, i32, i32**, i32*) #1

declare dso_local i32 @ITfDocumentMgr_Release(i32*) #1

declare dso_local i32 @IEnumTfDocumentMgrs_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

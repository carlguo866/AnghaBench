; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_RegGetIconA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_RegGetIconA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i64, i32*)* @HCR_RegGetIconA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HCR_RegGetIconA(i32 %0, i8* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [5 x i8], align 1
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = call i32 @RegQueryValueExA(i32 %21, i32 %22, i32 0, i64* %12, i32 %24, i64* %10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @REG_EXPAND_SZ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = call i32 @ExpandEnvironmentStringsA(i8* %32, i8* %20, i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @lstrcpynA(i8* %35, i8* %20, i64 %36)
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 0
  %41 = call i64 @ParseFieldA(i8* %39, i32 2, i8* %40, i64 5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 0
  %45 = call i32 @atoi(i8* %44)
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32*, i32** %11, align 8
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @ParseFieldA(i8* %50, i32 1, i8* %51, i64 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @PathUnquoteSpacesA(i8* %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %59

57:                                               ; preds = %5
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RegQueryValueExA(i32, i32, i32, i64*, i32, i64*) #2

declare dso_local i32 @ExpandEnvironmentStringsA(i8*, i8*, i32) #2

declare dso_local i32 @lstrcpynA(i8*, i8*, i64) #2

declare dso_local i64 @ParseFieldA(i8*, i32, i8*, i64) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @PathUnquoteSpacesA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

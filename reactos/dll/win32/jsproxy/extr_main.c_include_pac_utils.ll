; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jsproxy/extr_main.c_include_pac_utils.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jsproxy/extr_main.c_include_pac_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@include_pac_utils.pacjsW = internal constant [7 x i8] c"pac.js\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"jsproxy.dll\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @include_pac_utils to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @include_pac_utils(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @FindResourceW(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @include_pac_utils.pacjsW, i64 0, i64 0), i32 40)
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %49

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @SizeofResource(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @LoadResource(i32 %19, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i32, i32* @CP_ACP, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @MultiByteToWideChar(i32 %22, i32 0, i8* %23, i32 %24, i32* null, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @lstrlenW(i8* %28)
  %30 = add nsw i64 %27, %29
  %31 = add nsw i64 %30, 1
  %32 = call i32* @SysAllocStringLen(i32* null, i64 %31)
  store i32* %32, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %49

35:                                               ; preds = %15
  %36 = load i32, i32* @CP_ACP, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @MultiByteToWideChar(i32 %36, i32 0, i8* %37, i32 %38, i32* %39, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @lstrcpyW(i32* %45, i8* %46)
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %2, align 8
  br label %49

49:                                               ; preds = %35, %34, %14
  %50 = load i32*, i32** %2, align 8
  ret i32* %50
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @FindResourceW(i32, i8*, i32) #1

declare dso_local i32 @SizeofResource(i32, i32) #1

declare dso_local i8* @LoadResource(i32, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @SysAllocStringLen(i32*, i64) #1

declare dso_local i64 @lstrlenW(i8*) #1

declare dso_local i32 @lstrcpyW(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

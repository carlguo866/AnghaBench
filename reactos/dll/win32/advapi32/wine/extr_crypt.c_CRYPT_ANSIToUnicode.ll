; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_crypt.c_CRYPT_ANSIToUnicode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_crypt.c_CRYPT_ANSIToUnicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32)* @CRYPT_ANSIToUnicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_ANSIToUnicode(i32 %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32**, i32*** %6, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load i32, i32* @CP_ACP, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @MultiByteToWideChar(i32 %15, i32 0, i32 %16, i32 -1, i32* null, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32* @CRYPT_Alloc(i32 %24)
  %26 = load i32**, i32*** %6, align 8
  store i32* %25, i32** %26, align 8
  br label %34

27:                                               ; preds = %14
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @min(i32 %28, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32**, i32*** %6, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, i32* @CP_ACP, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32**, i32*** %6, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @MultiByteToWideChar(i32 %39, i32 0, i32 %40, i32 -1, i32* %42, i32 %43)
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %34
  %47 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %48 = call i32 @SetLastError(i32 %47)
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %38, %11
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32* @CRYPT_Alloc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_dispex.c_get_typelib.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_dispex.c_get_typelib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@typelib = common dso_local global i32** null, align 8
@lib_ids = common dso_local global %struct.TYPE_2__* null, align 8
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LoadRegTypeLib failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @get_typelib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_typelib(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %7 = load i32**, i32*** @typelib, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32*, i32** %7, i64 %9
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lib_ids, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lib_ids, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %27 = load i32**, i32*** %5, align 8
  %28 = call i32 @LoadRegTypeLib(i32 %19, i32 %25, i32 0, i32 %26, i32** %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %13
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %13
  %37 = load i32**, i32*** @typelib, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = bitcast i32** %40 to i8**
  %42 = load i32**, i32*** %5, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @InterlockedCompareExchangePointer(i8** %41, i32* %43, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32**, i32*** %5, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ITypeLib_Release(i32* %48)
  br label %50

50:                                               ; preds = %46, %36
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32**, i32*** @typelib, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32**, i32*** %5, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %32
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @LoadRegTypeLib(i32, i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

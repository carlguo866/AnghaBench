; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv__convert_utf8_to_utf16.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv__convert_utf8_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__convert_utf8_to_utf16(i8* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @UV_EINVAL, align 4
  store i32 %12, i32* %4, align 4
  br label %59

13:                                               ; preds = %3
  %14 = load i32, i32* @CP_UTF8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @MultiByteToWideChar(i32 %14, i32 0, i8* %15, i32 %16, i32* null, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 @uv_translate_sys_error(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %59

23:                                               ; preds = %13
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32* @uv__malloc(i32 %28)
  %30 = load i32**, i32*** %7, align 8
  store i32* %29, i32** %30, align 8
  %31 = load i32**, i32*** %7, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %35, i32* %4, align 4
  br label %59

36:                                               ; preds = %23
  %37 = load i32, i32* @CP_UTF8, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @MultiByteToWideChar(i32 %37, i32 0, i8* %38, i32 %39, i32* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @uv__free(i32* %48)
  %50 = load i32**, i32*** %7, align 8
  store i32* null, i32** %50, align 8
  %51 = call i32 (...) @GetLastError()
  %52 = call i32 @uv_translate_sys_error(i32 %51)
  store i32 %52, i32* %4, align 4
  br label %59

53:                                               ; preds = %36
  %54 = load i32**, i32*** %7, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %46, %34, %20, %11
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @uv__malloc(i32) #1

declare dso_local i32 @uv__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

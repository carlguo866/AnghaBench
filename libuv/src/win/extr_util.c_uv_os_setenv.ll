; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_setenv.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_os_setenv(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @UV_EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @uv__convert_utf8_to_utf16(i8* %17, i32 -1, i32** %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @uv__convert_utf8_to_utf16(i8* %24, i32 -1, i32** %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @uv__free(i32* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %23
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @SetEnvironmentVariableW(i32* %33, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @uv__free(i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @uv__free(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 @uv_translate_sys_error(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %28, %21, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @uv__convert_utf8_to_utf16(i8*, i32, i32**) #1

declare dso_local i32 @uv__free(i32*) #1

declare dso_local i32 @SetEnvironmentVariableW(i32*, i32*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

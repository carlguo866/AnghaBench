; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/Glide64/extr_osal_dynamiclib_win32.c_osal_dynlib_close.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/Glide64/extr_osal_dynamiclib_win32.c_osal_dynlib_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"FreeLibrary() error: %s\0A\00", align 1
@M64ERR_INTERNAL = common dso_local global i32 0, align 4
@M64ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osal_dynlib_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @FreeLibrary(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = call i32 (...) @GetLastError()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %14 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LANG_NEUTRAL, align 4
  %18 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %19 = call i32 @MAKELANGID(i32 %17, i32 %18)
  %20 = ptrtoint i8** %5 to i32
  %21 = call i32 @FormatMessage(i32 %15, i32* null, i32 %16, i32 %19, i32 %20, i32 0, i32* null)
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @LocalFree(i8* %25)
  %27 = load i32, i32* @M64ERR_INTERNAL, align 4
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @M64ERR_SUCCESS, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @FreeLibrary(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @FormatMessage(i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

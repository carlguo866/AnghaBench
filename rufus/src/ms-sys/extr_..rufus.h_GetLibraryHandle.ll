; ModuleID = '/home/carl/AnghaBench/rufus/src/ms-sys/extr_..rufus.h_GetLibraryHandle.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ms-sys/extr_..rufus.h_GetLibraryHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OpenedLibrariesHandleSize = common dso_local global i64 0, align 8
@MAX_LIBRARY_HANDLES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Error: MAX_LIBRARY_HANDLES is too small\0A\00", align 1
@OpenedLibrariesHandle = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @GetLibraryHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetLibraryHandle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32* @GetModuleHandleA(i8* %4)
  store i32* %5, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load i64, i64* @OpenedLibrariesHandleSize, align 8
  %9 = load i64, i64* @MAX_LIBRARY_HANDLES, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @uprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %25

13:                                               ; preds = %7
  %14 = load i8*, i8** %2, align 8
  %15 = call i32* @LoadLibraryA(i8* %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = load i32**, i32*** @OpenedLibrariesHandle, align 8
  %21 = load i64, i64* @OpenedLibrariesHandleSize, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @OpenedLibrariesHandleSize, align 8
  %23 = getelementptr inbounds i32*, i32** %20, i64 %21
  store i32* %19, i32** %23, align 8
  br label %24

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24, %11
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32* @GetModuleHandleA(i8*) #1

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i32* @LoadLibraryA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

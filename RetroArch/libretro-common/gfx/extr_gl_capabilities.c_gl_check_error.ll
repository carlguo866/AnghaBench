; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/extr_gl_capabilities.c_gl_check_error.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/extr_gl_capabilities.c_gl_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"GL: Invalid enum.\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"GL: Invalid value.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GL: Invalid operation.\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"GL: Out of memory.\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Non specified GL error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_check_error(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %5 = call i32 (...) @glGetError()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %20 [
    i32 132, label %7
    i32 130, label %10
    i32 131, label %13
    i32 128, label %16
    i32 129, label %19
  ]

7:                                                ; preds = %1
  %8 = call i8* @strdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load i8**, i8*** %3, align 8
  store i8* %8, i8** %9, align 8
  br label %23

10:                                               ; preds = %1
  %11 = call i8* @strdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i8**, i8*** %3, align 8
  store i8* %11, i8** %12, align 8
  br label %23

13:                                               ; preds = %1
  %14 = call i8* @strdup(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i8**, i8*** %3, align 8
  store i8* %14, i8** %15, align 8
  br label %23

16:                                               ; preds = %1
  %17 = call i8* @strdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i8**, i8*** %3, align 8
  store i8* %17, i8** %18, align 8
  br label %23

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = call i8* @strdup(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i8**, i8*** %3, align 8
  store i8* %21, i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %16, %13, %10, %7
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @glGetError(...) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

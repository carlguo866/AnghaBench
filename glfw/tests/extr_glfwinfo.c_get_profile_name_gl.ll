; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_glfwinfo.c_get_profile_name_gl.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_glfwinfo.c_get_profile_name_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = common dso_local global i32 0, align 4
@PROFILE_NAME_COMPAT = common dso_local global i8* null, align 8
@GL_CONTEXT_CORE_PROFILE_BIT = common dso_local global i32 0, align 4
@PROFILE_NAME_CORE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_profile_name_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_profile_name_gl(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @GL_CONTEXT_COMPATIBILITY_PROFILE_BIT, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** @PROFILE_NAME_COMPAT, align 8
  store i8* %9, i8** %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GL_CONTEXT_CORE_PROFILE_BIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i8*, i8** @PROFILE_NAME_CORE, align 8
  store i8* %16, i8** %2, align 8
  br label %18

17:                                               ; preds = %10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %18

18:                                               ; preds = %17, %15, %8
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_io_run_diff3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_io_run_diff3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_run_diff3(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7, i32* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %23 = load i32*, i32** %20, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = load i8*, i8** %18, align 8
  %31 = load i32*, i32** %19, align 8
  %32 = load i8*, i8** %21, align 8
  %33 = load i32*, i32** %22, align 8
  %34 = call i32 @svn_io_run_diff3_2(i32* %23, i8* %24, i8* %25, i8* %26, i8* %27, i8* %28, i8* %29, i8* %30, i32* %31, i8* %32, i32* null, i32* %33)
  %35 = call i32* @svn_error_trace(i32 %34)
  ret i32* %35
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_io_run_diff3_2(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_make_test_data.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_make_test_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@GIT_MKDIR_SKIP_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @make_test_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_test_data(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @cl_git_sandbox_init(i8* %11)
  store i32 %12, i32* @g_repo, align 4
  %13 = load i8**, i8*** %4, align 8
  store i8** %13, i8*** %5, align 8
  br label %14

14:                                               ; preds = %32, %2
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %25 = load i32, i32* @GIT_MKDIR_SKIP_LAST, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @git_futils_mkdir_relative(i8* %22, i8* %23, i32 511, i32 %26, i32* null)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @cl_git_mkfile(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %18
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %5, align 8
  br label %14

35:                                               ; preds = %14
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir_relative(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

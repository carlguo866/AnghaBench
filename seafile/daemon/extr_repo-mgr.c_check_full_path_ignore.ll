; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_check_full_path_ignore.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_check_full_path_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @check_full_path_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_full_path_ignore(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i8** @g_strsplit(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8** %14, i8*** %7, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = call i64 @g_strv_length(i8** %15)
  store i64 %16, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %32, %3
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i8**, i8*** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @should_ignore(i32* null, i8* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %10, align 4
  br label %48

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %17

35:                                               ; preds = %17
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37, i32* null)
  store i8* %38, i8** %11, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @seaf_repo_check_ignore_file(i32* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %35
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @g_free(i8* %46)
  br label %48

48:                                               ; preds = %45, %29
  %49 = load i8**, i8*** %7, align 8
  %50 = call i32 @g_strfreev(i8** %49)
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i8** @g_strsplit(i8*, i8*, i32) #1

declare dso_local i64 @g_strv_length(i8**) #1

declare dso_local i64 @should_ignore(i32*, i8*, i32*) #1

declare dso_local i8* @g_build_path(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @seaf_repo_check_ignore_file(i32*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

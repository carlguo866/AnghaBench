; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_clone.c_update_head_to_new_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_clone.c_update_head_to_new_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*)* @update_head_to_new_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_head_to_new_branch(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %13 = call i32 @git__prefixcmp(i8* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @create_tracking_branch(i32** %9, i32* %22, i32* %23, i8* %24, i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @git_reference_name(i32* %31)
  %33 = call i32 @git_repository_set_head(i32* %30, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @git_reference_free(i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @GIT_EEXISTS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

declare dso_local i32 @git__prefixcmp(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @create_tracking_branch(i32**, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @git_repository_set_head(i32*, i32) #1

declare dso_local i32 @git_reference_name(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

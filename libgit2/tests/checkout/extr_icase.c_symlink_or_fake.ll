; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_symlink_or_fake.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_symlink_or_fake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_CONFIGMAP_SYMLINKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @symlink_or_fake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symlink_or_fake(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @GIT_CONFIGMAP_SYMLINKS, align 4
  %11 = call i32 @git_repository__configmap_lookup(i32* %8, i32* %9, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @p_symlink(i8* %16, i8* %17)
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @git_futils_fake_symlink(i8* %20, i8* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32*, i32) #1

declare dso_local i32 @p_symlink(i8*, i8*) #1

declare dso_local i32 @git_futils_fake_symlink(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

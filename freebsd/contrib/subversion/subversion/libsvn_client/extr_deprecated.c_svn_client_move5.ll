; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_move5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_move5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capture_baton_t = type { i32*, i32** }

@capture_commit_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_move5(i32** %0, i32* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.capture_baton_t, align 8
  store i32** %0, i32*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load i32**, i32*** %10, align 8
  %21 = getelementptr inbounds %struct.capture_baton_t, %struct.capture_baton_t* %19, i32 0, i32 1
  store i32** %20, i32*** %21, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = getelementptr inbounds %struct.capture_baton_t, %struct.capture_baton_t* %19, i32 0, i32 0
  store i32* %22, i32** %23, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32*, i32** %16, align 8
  %29 = load i32, i32* @capture_commit_info, align 4
  %30 = load i32*, i32** %17, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = call i32* @svn_client_move6(i32* %24, i8* %25, i32 %26, i32 %27, i32* %28, i32 %29, %struct.capture_baton_t* %19, i32* %30, i32* %31)
  ret i32* %32
}

declare dso_local i32* @svn_client_move6(i32*, i8*, i32, i32, i32*, i32, %struct.capture_baton_t*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

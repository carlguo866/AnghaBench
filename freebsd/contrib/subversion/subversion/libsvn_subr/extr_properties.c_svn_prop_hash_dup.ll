; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_properties.c_svn_prop_hash_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_properties.c_svn_prop_hash_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_prop_hash_dup(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @apr_hash_make(i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @apr_hash_first(i32* %12, i32* %13)
  store i32* %14, i32** %5, align 8
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @apr_hash_this(i32* %19, i8** %7, i32* %8, i8** %9)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @apr_pstrmemdup(i32* %22, i8* %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @svn_string_dup(i8* %27, i32* %28)
  %30 = call i32 @apr_hash_set(i32* %21, i32 %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %18
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @apr_hash_next(i32* %32)
  store i32* %33, i32** %5, align 8
  br label %15

34:                                               ; preds = %15
  %35 = load i32*, i32** %6, align 8
  ret i32* %35
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32 @apr_hash_set(i32*, i32, i32, i32) #1

declare dso_local i32 @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i32 @svn_string_dup(i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_props_changed_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_props_changed_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@svn_prop_regular_kind = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @props_changed_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @props_changed_hash(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @apr_hash_first(i32* %13, i32* %14)
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %29, %12
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @apr_hash_this_key(i32* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @svn_property_kind2(i8* %22)
  %24 = load i64, i64* @svn_prop_regular_kind, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @apr_hash_next(i32* %30)
  store i32* %31, i32** %6, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %26, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_properties.c_svn_property_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_properties.c_svn_property_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_prop_wc_kind = common dso_local global i64 0, align 8
@SIZEOF_WC_PREFIX = common dso_local global i32 0, align 4
@svn_prop_entry_kind = common dso_local global i64 0, align 8
@SIZEOF_ENTRY_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @svn_property_kind(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @svn_property_kind2(i8* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @svn_prop_wc_kind, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @SIZEOF_WC_PREFIX, align 4
  %16 = load i32*, i32** %3, align 8
  store i32 %15, i32* %16, align 4
  br label %27

17:                                               ; preds = %10
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @svn_prop_entry_kind, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @SIZEOF_ENTRY_PREFIX, align 4
  %23 = load i32*, i32** %3, align 8
  store i32 %22, i32* %23, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %21
  br label %27

27:                                               ; preds = %26, %14
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

declare dso_local i64 @svn_property_kind2(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

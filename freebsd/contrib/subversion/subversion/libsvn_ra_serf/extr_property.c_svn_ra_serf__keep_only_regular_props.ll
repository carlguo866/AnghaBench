; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_svn_ra_serf__keep_only_regular_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_svn_ra_serf__keep_only_regular_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_prop_regular_kind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_ra_serf__keep_only_regular_props(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @apr_hash_first(i32* %7, i32* %8)
  store i32* %9, i32** %5, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @apr_hash_this_key(i32* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @svn_property_kind2(i8* %16)
  %18 = load i64, i64* @svn_prop_regular_kind, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @svn_hash_sets(i32* %21, i8* %22, i32* null)
  br label %24

24:                                               ; preds = %20, %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @apr_hash_next(i32* %26)
  store i32* %27, i32** %5, align 8
  br label %10

28:                                               ; preds = %10
  ret void
}

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_util.c_num_logs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_util.c_num_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @num_logs(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %11 = call i64 @nvlist_lookup_nvlist_array(i32* %9, i32 %10, i32*** %7, i64* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %38

14:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i64, i64* @B_FALSE, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i32**, i32*** %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %26 = call i32 @nvlist_lookup_uint64(i32* %24, i32 %25, i64* %8)
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %29, %19
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %15

36:                                               ; preds = %15
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %13
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

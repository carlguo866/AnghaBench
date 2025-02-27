; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_destroy.c_dsl_destroy_inconsistent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_destroy.c_dsl_destroy_inconsistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTAG = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_destroy_inconsistent(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @FTAG, align 4
  %9 = call i64 @dmu_objset_hold(i8* %7, i32 %8, i32** %5)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @dmu_objset_ds(i32* %12)
  %14 = call i64 @DS_IS_INCONSISTENT(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @dmu_objset_ds(i32* %15)
  %17 = call i64 @dsl_dataset_has_resume_receive_state(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i64, i64* @B_FALSE, align 8
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %19, %11
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @FTAG, align 4
  %24 = call i32 @dmu_objset_rele(i32* %22, i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @dsl_destroy_head(i8* %28)
  br label %30

30:                                               ; preds = %27, %21
  br label %31

31:                                               ; preds = %30, %2
  ret i32 0
}

declare dso_local i64 @dmu_objset_hold(i8*, i32, i32**) #1

declare dso_local i64 @DS_IS_INCONSISTENT(i32) #1

declare dso_local i32 @dmu_objset_ds(i32*) #1

declare dso_local i64 @dsl_dataset_has_resume_receive_state(i32) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

declare dso_local i32 @dsl_destroy_head(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

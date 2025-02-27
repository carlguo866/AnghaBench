; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_lookup_norm_by_dnode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_lookup_norm_by_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RW_READER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_lookup_norm_by_dnode(i32* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* @RW_READER, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* @FTAG, align 4
  %27 = call i32 @zap_lockdir_by_dnode(i32* %22, i32* null, i32 %23, i32 %24, i32 %25, i32 %26, i32** %20)
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %21, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %9
  %31 = load i32, i32* %21, align 4
  store i32 %31, i32* %10, align 4
  br label %47

32:                                               ; preds = %9
  %33 = load i32*, i32** %20, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i8*, i8** %15, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i8*, i8** %17, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @zap_lookup_impl(i32* %33, i8* %34, i32 %35, i32 %36, i8* %37, i32 %38, i8* %39, i32 %40, i32* %41)
  store i32 %42, i32* %21, align 4
  %43 = load i32*, i32** %20, align 8
  %44 = load i32, i32* @FTAG, align 4
  %45 = call i32 @zap_unlockdir(i32* %43, i32 %44)
  %46 = load i32, i32* %21, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %32, %30
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @zap_lockdir_by_dnode(i32*, i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @zap_lookup_impl(i32*, i8*, i32, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @zap_unlockdir(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

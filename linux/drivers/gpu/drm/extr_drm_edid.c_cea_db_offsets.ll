; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_cea_db_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_cea_db_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_BLOCK_CTA = common dso_local global i32 0, align 4
@CEA_EXT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @cea_db_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cea_db_offsets(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DATA_BLOCK_CTA, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32 3, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CEA_EXT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  store i32 4, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32*, i32** %7, align 8
  store i32 127, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %28
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 127
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @ERANGE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %43
  br label %54

51:                                               ; preds = %22
  %52 = load i32, i32* @ENOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %13
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51, %47
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

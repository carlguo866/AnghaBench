; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_WordEnableDataRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_WordEnableDataRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIT0 = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @efuse_WordEnableDataRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efuse_WordEnableDataRead(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @BIT0, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %11, %3
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BIT1, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %27, %22
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @BIT2, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %38
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @BIT3, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

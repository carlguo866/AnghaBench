; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.naclref.c_add.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.naclref.c_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ult i32 %10, 31
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %17, %22
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 255
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = lshr i32 %32, 8
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %12
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9

37:                                               ; preds = %9
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 31
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 31
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %40, %43
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 31
  store i32 %47, i32* %49, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

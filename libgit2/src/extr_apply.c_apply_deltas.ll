; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_apply_deltas.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_apply_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @apply_deltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_deltas(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %19 = call i64 @git_strmap_new(i32** %16)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %50

22:                                               ; preds = %7
  store i64 0, i64* %17, align 8
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i64, i64* %17, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = call i64 @git_diff_num_deltas(i32* %25)
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i64, i64* %17, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @apply_one(i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i64 %36, i32* %37)
  store i32 %38, i32* %18, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %46

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %17, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %17, align 8
  br label %23

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32*, i32** %16, align 8
  %48 = call i32 @git_strmap_free(i32* %47)
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %21
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i64 @git_strmap_new(i32**) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @apply_one(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @git_strmap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

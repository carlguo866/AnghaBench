; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_mem.c_aa_cnew.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_mem.c_aa_cnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALIAS_MAY = common dso_local global i32 0, align 4
@ALIAS_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @aa_cnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_cnew(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* @aa_findcnew(i32* %10, i32* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @aa_findcnew(i32* %13, i32* %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ALIAS_MAY, align 4
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @ALIAS_NO, align 4
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %24, %21
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** %9, align 8
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %7, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @aa_escape(i32* %36, i32* %37, i32* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %27, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32* @aa_findcnew(i32*, i32*) #1

declare dso_local i32 @aa_escape(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

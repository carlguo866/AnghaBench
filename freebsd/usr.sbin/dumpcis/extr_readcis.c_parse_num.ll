; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_parse_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_parse_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_num(i32 %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %39 [
    i32 0, label %11
    i32 16, label %11
    i32 1, label %12
    i32 17, label %12
    i32 2, label %18
    i32 18, label %18
    i32 19, label %25
    i32 3, label %32
    i32 20, label %32
  ]

11:                                               ; preds = %4, %4
  br label %39

12:                                               ; preds = %4, %4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  br label %39

18:                                               ; preds = %4, %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @tpl16(i32* %19)
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32* %24, i32** %6, align 8
  br label %39

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @tpl24(i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32* %31, i32** %6, align 8
  br label %39

32:                                               ; preds = %4, %4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @tpl32(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32* %38, i32** %6, align 8
  br label %39

39:                                               ; preds = %4, %32, %25, %18, %12, %11
  %40 = load i32**, i32*** %7, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = load i32**, i32*** %7, align 8
  store i32* %43, i32** %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @tpl16(i32*) #1

declare dso_local i32 @tpl24(i32*) #1

declare dso_local i32 @tpl32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

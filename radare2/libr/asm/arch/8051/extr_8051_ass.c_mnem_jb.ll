; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_jb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_jb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i32**)* @mnem_jb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnem_jb(i8** %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @address_bit(i8* %12, i32* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @to_address(i8* %19, i64* %9)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 1
  %25 = load i64, i64* %9, align 8
  %26 = load i32**, i32*** %7, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = call i32 @relative_address(i64 %24, i64 %25, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22, %16
  store i32 0, i32* %4, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load i32**, i32*** %7, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 32, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %36, i32* %39, align 4
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32* %42, i32** %40, align 8
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %32, %31, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @address_bit(i8*, i32*) #1

declare dso_local i32 @to_address(i8*, i64*) #1

declare dso_local i32 @relative_address(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

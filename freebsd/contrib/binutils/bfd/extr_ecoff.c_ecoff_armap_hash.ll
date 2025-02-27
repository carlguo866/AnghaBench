; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_armap_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_armap_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARMAP_HASH_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32)* @ecoff_armap_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecoff_armap_hash(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %49

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %24, %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = lshr i32 %25, 27
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %27, 5
  %29 = or i32 %26, %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = add i32 %29, %33
  store i32 %34, i32* %10, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* @ARMAP_HASH_MAGIC, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 %40, 1
  %42 = and i32 %39, %41
  %43 = or i32 %42, 1
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 32, %46
  %48 = lshr i32 %45, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %35, %13
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

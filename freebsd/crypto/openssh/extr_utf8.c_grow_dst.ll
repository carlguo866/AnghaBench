; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_utf8.c_grow_dst.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_utf8.c_grow_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i64, i8**, i64)* @grow_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_dst(i8** %0, i64* %1, i64 %2, i8** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8**, i8*** %10, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i64, i64* %11, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = icmp ult i8* %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %58

25:                                               ; preds = %5
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 128
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %13, align 8
  br label %34

34:                                               ; preds = %32, %25
  %35 = load i8**, i8*** %7, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i8* @recallocarray(i8* %36, i64 %38, i64 %39, i32 1)
  store i8* %40, i8** %12, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %58

43:                                               ; preds = %34
  %44 = load i8*, i8** %12, align 8
  %45 = load i8**, i8*** %10, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %46 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds i8, i8* %44, i64 %51
  %53 = load i8**, i8*** %10, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i8**, i8*** %7, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64*, i64** %8, align 8
  store i64 %56, i64* %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %43, %42, %24
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i8* @recallocarray(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

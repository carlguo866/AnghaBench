; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_pop_id3_picture.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_pop_id3_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64*)* @pop_id3_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pop_id3_picture(i32** %0, i64* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ult i64 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %45

10:                                               ; preds = %2
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %14, 1
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = call i32 @free_mpg123_picture(i32* %16)
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %19, 1
  br i1 %20, label %21, label %39

21:                                               ; preds = %10
  %22 = load i32**, i32*** %3, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %25, 1
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32* @safe_realloc(i32* %23, i32 %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32*, i32** %5, align 8
  %34 = load i32**, i32*** %3, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %32, %21
  br label %45

39:                                               ; preds = %10
  %40 = load i32**, i32*** %3, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @free(i32* %41)
  %43 = load i32**, i32*** %3, align 8
  store i32* null, i32** %43, align 8
  %44 = load i64*, i64** %4, align 8
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %9, %39, %38
  ret void
}

declare dso_local i32 @free_mpg123_picture(i32*) #1

declare dso_local i32* @safe_realloc(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

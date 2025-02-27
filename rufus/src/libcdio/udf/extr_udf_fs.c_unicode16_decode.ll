; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_fs.c_unicode16_decode.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_fs.c_unicode16_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"UCS-2BE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @unicode16_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unicode16_decode(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %50 [
    i32 8, label %11
    i32 16, label %42
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @calloc(i32 %12, i32 1)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %3, align 8
  br label %54

19:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 %32, i8* %36, align 1
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %3, align 8
  br label %54

42:                                               ; preds = %2
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = bitcast i32* %44 to i8*
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @cdio_charset_to_utf8(i8* %45, i32 %47, i8** %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %3, align 8
  br label %54

50:                                               ; preds = %2
  %51 = call i64 @calloc(i32 1, i32 1)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %3, align 8
  br label %54

54:                                               ; preds = %50, %42, %40, %17
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @cdio_charset_to_utf8(i8*, i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

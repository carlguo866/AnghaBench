; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/encodings/extr_encoding_utf.c_utf8skip.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/encodings/extr_encoding_utf.c_utf8skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8skip(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %3, align 8
  br label %34

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %6, align 8
  br label %17

17:                                               ; preds = %22, %14
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 192
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %14, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %31, %11
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

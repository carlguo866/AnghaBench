; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs2internal.h_ucs2internal_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ucs2internal.h_ucs2internal_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i16*, i8*, i32)* @ucs2internal_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs2internal_mbtowc(i32 %0, i16* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i16* %1, i16** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i16*
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %10, align 2
  %17 = load i16, i16* %10, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp sge i32 %18, 55296
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i16, i16* %10, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp slt i32 %22, 57344
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %20, %13
  %27 = load i16, i16* %10, align 2
  %28 = load i16*, i16** %7, align 8
  store i16 %27, i16* %28, align 2
  store i32 2, i32* %5, align 4
  br label %31

29:                                               ; preds = %4
  %30 = call i32 @RET_TOOFEW(i32 0)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %26, %24
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_user_css_sum.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_user_css_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @user_css_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @user_css_sum(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i8* @fz_user_css(i32* %5)
  store i8* %6, i8** %4, align 8
  %7 = call i64 @crc32(i64 0, i32* null, i32 0)
  store i64 %7, i64* %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i64 @crc32(i64 %11, i32* %13, i32 %15)
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i64, i64* %3, align 8
  ret i64 %18
}

declare dso_local i8* @fz_user_css(i32*) #1

declare dso_local i64 @crc32(i64, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

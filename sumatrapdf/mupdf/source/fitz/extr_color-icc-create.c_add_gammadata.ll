; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_add_gammadata.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_add_gammadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i16, i32)* @add_gammadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_gammadata(i32* %0, i32* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @fz_append_int32_be(i32* %9, i32* %10, i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @fz_append_byte_n(i32* %13, i32* %14, i32 0, i32 4)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @fz_append_int32_be(i32* %16, i32* %17, i32 1)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i16, i16* %7, align 2
  %22 = call i32 @fz_append_int16_be(i32* %19, i32* %20, i16 zeroext %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @fz_append_byte_n(i32* %23, i32* %24, i32 0, i32 2)
  ret void
}

declare dso_local i32 @fz_append_int32_be(i32*, i32*, i32) #1

declare dso_local i32 @fz_append_byte_n(i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_append_int16_be(i32*, i32*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_cf_norx32_encrypt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_cf_norx32_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_norx32_encrypt(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @init(i32* %21, i32* %22, i32* %23)
  %25 = load i32*, i32** %13, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i32 @do_header(i32* %21, i32* %25, i64 %26)
  %28 = load i32*, i32** %15, align 8
  %29 = load i32*, i32** %19, align 8
  %30 = load i64, i64* %16, align 8
  %31 = call i32 @encrypt_body(i32* %21, i32* %28, i32* %29, i64 %30)
  %32 = load i32*, i32** %17, align 8
  %33 = load i64, i64* %18, align 8
  %34 = call i32 @do_trailer(i32* %21, i32* %32, i64 %33)
  %35 = load i32*, i32** %20, align 8
  %36 = call i32 @get_tag(i32* %21, i32* %35)
  %37 = call i32 @mem_clean(i32* %21, i32 4)
  ret void
}

declare dso_local i32 @init(i32*, i32*, i32*) #1

declare dso_local i32 @do_header(i32*, i32*, i64) #1

declare dso_local i32 @encrypt_body(i32*, i32*, i32*, i64) #1

declare dso_local i32 @do_trailer(i32*, i32*, i64) #1

declare dso_local i32 @get_tag(i32*, i32*) #1

declare dso_local i32 @mem_clean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

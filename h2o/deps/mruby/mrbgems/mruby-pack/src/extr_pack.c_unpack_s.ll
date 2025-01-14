; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_s.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@PACK_FLAG_SIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32)* @unpack_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_s(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @PACK_FLAG_LITTLEENDIAN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = mul nsw i32 %20, 256
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %11, align 4
  br label %38

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = mul nsw i32 %31, 256
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %27, %16
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  %45 = icmp sge i32 %44, 32768
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %47, 65536
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %43, %38
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @mrb_fixnum_value(i32 %52)
  %54 = call i32 @mrb_ary_push(i32* %50, i32 %51, i32 %53)
  ret i32 2
}

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-vid.c_fill_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-vid.c_fill_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @fill_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_texture(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i64, i64* %6, align 8
  %9 = icmp ult i64 %8, 32
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %12, 32
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = mul i64 %17, 32
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %18, %19
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32 %15, i32* %21, align 4
  br label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %11

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %7

29:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

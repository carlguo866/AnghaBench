; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32* }

@MAX_PALETTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64, %struct.fb_info*)* @mbxfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbxfb_setcolreg(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  store i32 1, i32* %14, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @MAX_PALETTES, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %6
  %20 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %15, align 8
  %23 = load i64, i64* %8, align 8
  %24 = and i64 %23, 63488
  %25 = load i64, i64* %9, align 8
  %26 = and i64 %25, 64512
  %27 = ashr i64 %26, 5
  %28 = or i64 %24, %27
  %29 = load i64, i64* %10, align 8
  %30 = and i64 %29, 63488
  %31 = ashr i64 %30, 11
  %32 = or i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32*, i32** %15, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %37, align 4
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %19, %6
  %39 = load i32, i32* %14, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

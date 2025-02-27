; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_pva.c_pva_check.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_pva.c_pva_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PVA_MAGIC = common dso_local global i32 0, align 4
@PVA_MAX_PAYLOAD_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pva_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pva_check(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 6
  %7 = call i32 @AV_RB16(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @AV_RB16(i32* %8)
  %10 = load i32, i32* @PVA_MAGIC, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 85
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 224
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PVA_MAX_PAYLOAD_LENGTH, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %27, %22, %17, %12, %1
  store i32 -1, i32* %2, align 4
  br label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 8
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @AV_RB16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

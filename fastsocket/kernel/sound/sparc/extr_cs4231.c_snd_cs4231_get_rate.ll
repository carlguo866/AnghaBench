; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rates = common dso_local global i32* null, align 8
@freq_bits = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @snd_cs4231_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_cs4231_get_rate(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 14
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = load i32*, i32** @rates, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load i8*, i8** @freq_bits, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %2, align 1
  br label %30

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %5

26:                                               ; preds = %5
  %27 = load i8*, i8** @freq_bits, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 13
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %2, align 1
  br label %30

30:                                               ; preds = %26, %16
  %31 = load i8, i8* %2, align 1
  ret i8 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

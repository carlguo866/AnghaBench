; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_mem.c_writebit.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_mem.c_writebit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @writebit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writebit(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sdiv i32 %9, 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @R_BIT_SET(i32* %20, i32 %21)
  br label %27

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @R_BIT_UNSET(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @R_BIT_SET(i32*, i32) #1

declare dso_local i32 @R_BIT_UNSET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

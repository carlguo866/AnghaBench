; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_probe_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_probe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @probe_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_irq(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i32 @ct_probe_irq(i32* %9, i32 %11)
  %13 = call i32 @DELAY(i32 100)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %38, %2
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ct_probe_irq(i32* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = call i32 @DELAY(i32 1000)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @ct_probe_irq(i32* %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = call i32 @DELAY(i32 100)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ct_probe_irq(i32* %35, i32 0)
  store i32 1, i32* %3, align 4
  br label %44

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %14

41:                                               ; preds = %14
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ct_probe_irq(i32* %42, i32 0)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ct_probe_irq(i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

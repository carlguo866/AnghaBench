; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c__stack_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_radio.c__stack_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B43legacy_INTERFSTACK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @_stack_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_stack_restore(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = and i32 %9, 57344
  %11 = icmp eq i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @B43legacy_WARN_ON(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 248
  %17 = icmp eq i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @B43legacy_WARN_ON(i32 %19)
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %45, %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @B43legacy_INTERFSTACK_SIZE, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 8191
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %45

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 28672
  %36 = ashr i32 %35, 13
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %45

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, -65536
  %44 = lshr i32 %43, 16
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %39, %31
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  br label %21

50:                                               ; preds = %21
  %51 = call i32 @B43legacy_BUG_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %40
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

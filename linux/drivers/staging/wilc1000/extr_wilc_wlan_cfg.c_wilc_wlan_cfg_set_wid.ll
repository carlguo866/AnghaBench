; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan_cfg.c_wilc_wlan_cfg_set_wid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan_cfg.c_wilc_wlan_cfg_set_wid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_wlan_cfg_set_wid(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = ashr i32 %13, 12
  %15 = and i32 %14, 15
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  switch i32 %16, label %64 [
    i32 131, label %17
    i32 130, label %28
    i32 128, label %39
    i32 129, label %50
    i32 132, label %57
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wilc_wlan_cfg_set_byte(i32* %21, i32 %22, i32 %23, i32 %25)
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %20, %17
  br label %64

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wilc_wlan_cfg_set_hword(i32* %32, i32 %33, i32 %34, i32 %36)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %31, %28
  br label %64

39:                                               ; preds = %5
  %40 = load i32, i32* %10, align 4
  %41 = icmp sge i32 %40, 4
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @wilc_wlan_cfg_set_word(i32* %43, i32 %44, i32 %45, i32 %47)
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %42, %39
  br label %64

50:                                               ; preds = %5
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @wilc_wlan_cfg_set_str(i32* %51, i32 %52, i32 %53, i32* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  br label %64

57:                                               ; preds = %5
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @wilc_wlan_cfg_set_bin(i32* %58, i32 %59, i32 %60, i32* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %5, %57, %50, %49, %38, %27
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

declare dso_local i32 @wilc_wlan_cfg_set_byte(i32*, i32, i32, i32) #1

declare dso_local i32 @wilc_wlan_cfg_set_hword(i32*, i32, i32, i32) #1

declare dso_local i32 @wilc_wlan_cfg_set_word(i32*, i32, i32, i32) #1

declare dso_local i32 @wilc_wlan_cfg_set_str(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @wilc_wlan_cfg_set_bin(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

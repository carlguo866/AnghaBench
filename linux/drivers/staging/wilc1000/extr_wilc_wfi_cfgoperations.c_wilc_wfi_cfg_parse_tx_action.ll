; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_wfi_cfg_parse_tx_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_wfi_cfg_parse_tx_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GO_INTENT_ATTR_ID = common dso_local global i32 0, align 4
@CHANLIST_ATTR_ID = common dso_local global i32 0, align 4
@OPERCHAN_ATTR_ID = common dso_local global i32 0, align 4
@WILC_INVALID_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32, i32)* @wilc_wfi_cfg_parse_tx_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_wfi_cfg_parse_tx_action(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %58, %5
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GO_INTENT_ATTR_ID, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, 3
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = or i32 %31, 30
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %34, 3
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %68

37:                                               ; preds = %18
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CHANLIST_ATTR_ID, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i64, i64* %11, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %13, align 4
  br label %58

47:                                               ; preds = %37
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OPERCHAN_ATTR_ID, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, i64* %11, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %47
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %11, align 8
  br label %14

68:                                               ; preds = %25, %14
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @WILC_INVALID_CHANNEL, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @wilc_wfi_cfg_parse_ch_attr(i32* %76, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %72, %68
  ret void
}

declare dso_local i32 @wilc_wfi_cfg_parse_ch_attr(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

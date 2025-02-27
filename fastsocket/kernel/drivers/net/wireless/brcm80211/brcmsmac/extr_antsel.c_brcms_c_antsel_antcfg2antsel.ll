; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_antcfg2antsel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_antcfg2antsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.antsel_info = type { i64 }

@ANTSEL_2x4 = common dso_local global i64 0, align 8
@mimo_2x4_div_antselpat_tbl = common dso_local global i32* null, align 8
@ANTSEL_2x3 = common dso_local global i64 0, align 8
@mimo_2x3_div_antselpat_tbl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.antsel_info*, i64)* @brcms_c_antsel_antcfg2antsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_antsel_antcfg2antsel(%struct.antsel_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.antsel_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.antsel_info* %0, %struct.antsel_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @BRCMS_ANTSEL_11N(i64 %8)
  %10 = call i64 @BRCMS_ANTIDX_11N(i32 %9)
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %12 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ANTSEL_2x4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32*, i32** @mimo_2x4_div_antselpat_tbl, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %25 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ANTSEL_2x3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32*, i32** @mimo_2x3_div_antselpat_tbl, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 15
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %29, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @BRCMS_ANTIDX_11N(i32) #1

declare dso_local i32 @BRCMS_ANTSEL_11N(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

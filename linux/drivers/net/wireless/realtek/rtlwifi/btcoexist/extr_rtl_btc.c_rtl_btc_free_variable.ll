; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_free_variable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_rtl_btc.c_rtl_btc_free_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*)* @rtl_btc_free_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_btc_free_variable(%struct.rtl_priv* %0) #0 {
  %2 = alloca %struct.rtl_priv*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %2, align 8
  %3 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %4 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @kfree(i32* %6)
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kfree(i32* %14)
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

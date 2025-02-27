; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c_esp_netif_attach_wifi_ap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c_esp_netif_attach_wifi_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@s_wifi_netifs = common dso_local global i32** null, align 8
@WIFI_IF_AP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_netif_attach_wifi_ap(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %7, i32* %2, align 4
  br label %16

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32**, i32*** @s_wifi_netifs, align 8
  %11 = load i64, i64* @WIFI_IF_AP, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  store i32* %9, i32** %12, align 8
  %13 = load i64, i64* @WIFI_IF_AP, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @create_and_attach(i64 %13, i32* %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %8, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @create_and_attach(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

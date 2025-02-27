; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_netif/extr_esp_netif_objects.c_esp_netif_get_handle_from_ifkey.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_netif/extr_esp_netif_objects.c_esp_netif_get_handle_from_ifkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to lock esp-netif list with %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @esp_netif_get_handle_from_ifkey(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @esp_netif_list_lock()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @ESP_OK, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @TAG, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ESP_LOGE(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32* null, i32** %2, align 8
  br label %34

13:                                               ; preds = %1
  %14 = call i32* @esp_netif_next_unsafe(i32* null)
  store i32* %14, i32** %5, align 8
  br label %15

15:                                               ; preds = %28, %13
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @esp_netif_get_ifkey(i32* %20)
  %22 = call i64 @strcmp(i8* %19, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = call i32 (...) @esp_netif_list_unlock()
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** %2, align 8
  br label %34

27:                                               ; preds = %18, %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @esp_netif_next_unsafe(i32* %29)
  store i32* %30, i32** %5, align 8
  %31 = icmp ne i32* null, %30
  br i1 %31, label %15, label %32

32:                                               ; preds = %28
  %33 = call i32 (...) @esp_netif_list_unlock()
  store i32* null, i32** %2, align 8
  br label %34

34:                                               ; preds = %32, %24, %9
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local i32 @esp_netif_list_lock(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32* @esp_netif_next_unsafe(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @esp_netif_get_ifkey(i32*) #1

declare dso_local i32 @esp_netif_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

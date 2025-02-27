; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action_layer.c_store_or_get_action.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action_layer.c_store_or_get_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@disable_action_cache = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @store_or_get_action(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @disable_action_cache, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @layer_switch_get_action(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @layer_switch_get_layer(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @update_source_layers_cache(i32 %18, i32 %19)
  br label %24

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @read_source_layers_cache(i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @action_for_key(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @layer_switch_get_action(i32) #1

declare dso_local i32 @layer_switch_get_layer(i32) #1

declare dso_local i32 @update_source_layers_cache(i32, i32) #1

declare dso_local i32 @read_source_layers_cache(i32) #1

declare dso_local i32 @action_for_key(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

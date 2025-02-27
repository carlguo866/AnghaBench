; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kinesis/keymaps/tuesdayjohn/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kinesis/keymaps/tuesdayjohn/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_COLEMAK = common dso_local global i64 0, align 8
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@_QWERTY = common dso_local global i64 0, align 8
@_GAMING = common dso_local global i32 0, align 4
@_NUMPAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %45 [
    i32 130, label %7
    i32 128, label %20
    i32 129, label %33
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i64, i64* @_COLEMAK, align 8
  %15 = shl i64 1, %14
  %16 = call i32 @default_layer_set(i64 %15)
  %17 = load i64, i64* @_COLEMAK, align 8
  %18 = call i32 @layer_move(i64 %17)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  br label %19

19:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i64, i64* @_QWERTY, align 8
  %28 = shl i64 1, %27
  %29 = call i32 @default_layer_set(i64 %28)
  %30 = load i64, i64* @_QWERTY, align 8
  %31 = call i32 @layer_move(i64 %30)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  br label %32

32:                                               ; preds = %26, %20
  store i32 0, i32* %3, align 4
  br label %46

33:                                               ; preds = %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* @_GAMING, align 4
  %41 = call i32 @layer_invert(i32 %40)
  %42 = load i32, i32* @_NUMPAD, align 4
  %43 = call i32 @layer_off(i32 %42)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  br label %44

44:                                               ; preds = %39, %33
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %32, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @default_layer_set(i64) #1

declare dso_local i32 @layer_move(i64) #1

declare dso_local i32 @layer_invert(i32) #1

declare dso_local i32 @layer_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

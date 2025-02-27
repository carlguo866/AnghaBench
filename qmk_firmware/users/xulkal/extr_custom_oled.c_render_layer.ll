; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/xulkal/extr_custom_oled.c_render_layer.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/xulkal/extr_custom_oled.c_render_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i64 0, align 8
@default_layer_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Layer: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BASE \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"GAME \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"LOWER\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"RAISE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @render_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_layer() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @layer_state, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @layer_state, align 8
  %6 = call i32 @biton(i64 %5)
  br label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @default_layer_state, align 4
  %9 = call i32 @biton32(i32 %8)
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %6, %4 ], [ %9, %7 ]
  store i32 %11, i32* %1, align 4
  %12 = call i32 @PSTR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @oled_write_P(i32 %12, i32 0)
  %14 = load i32, i32* %1, align 4
  switch i32 %14, label %27 [
    i32 129, label %15
    i32 131, label %18
    i32 130, label %21
    i32 128, label %24
  ]

15:                                               ; preds = %10
  %16 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @oled_write_P(i32 %16, i32 0)
  br label %27

18:                                               ; preds = %10
  %19 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @oled_write_P(i32 %19, i32 0)
  br label %27

21:                                               ; preds = %10
  %22 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @oled_write_P(i32 %22, i32 0)
  br label %27

24:                                               ; preds = %10
  %25 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 @oled_write_P(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %10, %24, %21, %18, %15
  ret void
}

declare dso_local i32 @biton(i64) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @oled_write_P(i32, i32) #1

declare dso_local i32 @PSTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

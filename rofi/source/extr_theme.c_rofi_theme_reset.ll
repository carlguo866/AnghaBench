; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_reset.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@rofi_theme = common dso_local global %struct.TYPE_4__* null, align 8
@ThemeWidget = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Root\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_theme_reset() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rofi_theme, align 8
  %2 = call i32 @rofi_theme_free(%struct.TYPE_4__* %1)
  %3 = load i32, i32* @ThemeWidget, align 4
  %4 = call %struct.TYPE_4__* @g_slice_new0(i32 %3)
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** @rofi_theme, align 8
  %5 = call i32 @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rofi_theme, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = call i32 (...) @rofi_theme_insert_listview_backwards_fix()
  ret void
}

declare dso_local i32 @rofi_theme_free(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @g_slice_new0(i32) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i32 @rofi_theme_insert_listview_backwards_fix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

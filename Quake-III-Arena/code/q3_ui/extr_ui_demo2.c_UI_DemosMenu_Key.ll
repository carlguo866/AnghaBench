; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_demo2.c_UI_DemosMenu_Key.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_demo2.c_UI_DemosMenu_Key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@s_demos = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @UI_DemosMenu_Key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_DemosMenu_Key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32* @Menu_ItemAtCursor(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_demos, i32 0, i32 0))
  store i32* %4, i32** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @Menu_DefaultKey(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_demos, i32 0, i32 0), i32 %5)
  ret i32 %6
}

declare dso_local i32* @Menu_ItemAtCursor(i32*) #1

declare dso_local i32 @Menu_DefaultKey(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

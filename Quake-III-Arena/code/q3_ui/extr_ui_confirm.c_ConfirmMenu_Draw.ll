; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_confirm.c_ConfirmMenu_Draw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_confirm.c_ConfirmMenu_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32 (...)*, i32 }

@ART_CONFIRM_FRAME = common dso_local global i32 0, align 4
@s_confirm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@color_red = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@UI_LEFT = common dso_local global i32 0, align 4
@UI_INVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ConfirmMenu_Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConfirmMenu_Draw() #0 {
  %1 = load i32, i32* @ART_CONFIRM_FRAME, align 4
  %2 = call i32 @UI_DrawNamedPic(i32 142, i32 118, i32 359, i32 256, i32 %1)
  %3 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 0), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 1), align 8
  %5 = load i32, i32* @color_red, align 4
  %6 = call i32 @UI_DrawProportionalString(i32 320, i32 204, i8* %3, i32 %4, i32 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 2), align 4
  %8 = load i32, i32* @UI_LEFT, align 4
  %9 = load i32, i32* @UI_INVERSE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @color_red, align 4
  %12 = call i32 @UI_DrawProportionalString(i32 %7, i32 265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = call i32 @Menu_Draw(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 4))
  %14 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 3), align 8
  %15 = icmp ne i32 (...)* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_confirm, i32 0, i32 3), align 8
  %18 = call i32 (...) %17()
  br label %19

19:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @UI_DrawNamedPic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @Menu_Draw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/vim/extr_vim.h_VIM_CHANGE_BACK.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/vim/extr_vim.h_VIM_CHANGE_BACK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"\1B[31mb\1B[0m\00", align 1
@KC_NO = common dso_local global i32 0, align 4
@INSERT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIM_CHANGE_BACK() #0 {
  %1 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @KC_NO, align 4
  %3 = call i32 @VIM_LEADER(i32 %2)
  %4 = call i32 (...) @VIM_DELETE_BACK()
  %5 = load i32, i32* @INSERT_MODE, align 4
  %6 = call i32 @layer_on(i32 %5)
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @VIM_LEADER(i32) #1

declare dso_local i32 @VIM_DELETE_BACK(...) #1

declare dso_local i32 @layer_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

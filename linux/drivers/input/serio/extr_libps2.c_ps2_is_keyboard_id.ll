; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_is_keyboard_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_is_keyboard_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ps2_is_keyboard_id.keyboard_ids = internal constant [6 x i32] [i32 171, i32 172, i32 43, i32 93, i32 96, i32 71], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2_is_keyboard_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32* @memchr(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ps2_is_keyboard_id.keyboard_ids, i64 0, i64 0), i32 %3, i32 24)
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare dso_local i32* @memchr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

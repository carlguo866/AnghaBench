; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_set_state_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-laptop.c_kbd_set_state_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbd_state = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Setting old previous keyboard state failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbd_state*, %struct.kbd_state*)* @kbd_set_state_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbd_set_state_safe(%struct.kbd_state* %0, %struct.kbd_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kbd_state*, align 8
  %5 = alloca %struct.kbd_state*, align 8
  %6 = alloca i32, align 4
  store %struct.kbd_state* %0, %struct.kbd_state** %4, align 8
  store %struct.kbd_state* %1, %struct.kbd_state** %5, align 8
  %7 = load %struct.kbd_state*, %struct.kbd_state** %4, align 8
  %8 = call i32 @kbd_set_state(%struct.kbd_state* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.kbd_state*, %struct.kbd_state** %5, align 8
  %14 = call i32 @kbd_set_state(%struct.kbd_state* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @kbd_set_state(%struct.kbd_state*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_program_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_program_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7180_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7180_state*)* @adv7180_program_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_program_std(%struct.adv7180_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv7180_state*, align 8
  %4 = alloca i32, align 4
  store %struct.adv7180_state* %0, %struct.adv7180_state** %3, align 8
  %5 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %6 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @v4l2_std_to_adv7180(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @adv7180_set_video_standard(%struct.adv7180_state* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @v4l2_std_to_adv7180(i32) #1

declare dso_local i32 @adv7180_set_video_standard(%struct.adv7180_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

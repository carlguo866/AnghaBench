; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_find_hole.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_find_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"unable to allocate new control numid\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i32)* @snd_ctl_find_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_find_hole(%struct.snd_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 100000, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @snd_ctl_remove_numid_conflict(%struct.snd_card* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %18 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %12
  br label %7

24:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @snd_ctl_remove_numid_conflict(%struct.snd_card*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

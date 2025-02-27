; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_gt683r_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-gt683r.c_gt683r_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt683r_led = type { i32 }

@GT683R_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gt683r_led*, i32)* @gt683r_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt683r_mode_set(%struct.gt683r_led* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gt683r_led*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.gt683r_led* %0, %struct.gt683r_led** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GT683R_BUFFER_SIZE, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32* @kzalloc(i32 %8, i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 1, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 2, i32* %20, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 32, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  store i32 1, i32* %27, align 4
  %28 = load %struct.gt683r_led*, %struct.gt683r_led** %4, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @gt683r_led_snd_msg(%struct.gt683r_led* %28, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %16, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @gt683r_led_snd_msg(%struct.gt683r_led*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

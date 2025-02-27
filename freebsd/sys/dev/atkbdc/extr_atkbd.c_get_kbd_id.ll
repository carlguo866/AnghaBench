; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_get_kbd_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbd.c_get_kbd_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KBDC_SEND_DEV_ID = common dso_local global i32 0, align 4
@KBD_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_kbd_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_kbd_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @empty_both_buffers(i32 %6, i32 10)
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @KBDC_SEND_DEV_ID, align 4
  %10 = call i64 @send_kbd_command(i32 %8, i32 %9)
  %11 = load i64, i64* @KBD_ACK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = call i32 @DELAY(i32 10000)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @read_kbd_data(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @read_kbd_data(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @empty_both_buffers(i32 %30, i32 10)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @test_controller(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @test_kbd_port(i32 %34)
  store i32 -1, i32* %2, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %29, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i64 @send_kbd_command(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @read_kbd_data(i32) #1

declare dso_local i32 @test_controller(i32) #1

declare dso_local i32 @test_kbd_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

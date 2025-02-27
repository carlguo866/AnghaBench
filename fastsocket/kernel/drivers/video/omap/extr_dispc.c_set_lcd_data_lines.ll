; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_set_lcd_data_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_set_lcd_data_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_lcd_data_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lcd_data_lines(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %10 [
    i32 12, label %6
    i32 16, label %7
    i32 18, label %8
    i32 24, label %9
  ]

6:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

7:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %12

8:                                                ; preds = %1
  store i32 2, i32* %4, align 4
  br label %12

9:                                                ; preds = %1
  store i32 3, i32* %4, align 4
  br label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @BUG()
  br label %12

12:                                               ; preds = %10, %9, %8, %7, %6
  %13 = load i32, i32* @DISPC_CONTROL, align 4
  %14 = call i32 @dispc_read_reg(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, -769
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 8
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @DISPC_CONTROL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @dispc_write_reg(i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_show_font.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_show_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vga_show_font.cg = internal global [8 x i32] [i32 0, i32 5, i32 10, i32 15, i32 48, i32 53, i32 58, i32 63], align 16
@V_ADP_FONT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TSIDX = common dso_local global i32 0, align 4
@TSREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @vga_show_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_show_font(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @V_ADP_FONT, align 4
  %9 = load i32, i32* @ENODEV, align 4
  %10 = call i32 @prologue(i32* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %13
  %19 = call i32 (...) @splhigh()
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @TSIDX, align 4
  %21 = call i32 @outb(i32 %20, i32 3)
  %22 = load i32, i32* @TSREG, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* @vga_show_font.cg, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @outb(i32 %22, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @splx(i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @prologue(i32*, i32, i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

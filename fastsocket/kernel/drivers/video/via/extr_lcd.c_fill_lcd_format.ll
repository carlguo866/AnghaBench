; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_fill_lcd_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_fill_lcd_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@BIT4 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@CR88 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fill_lcd_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_lcd_format() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @BIT4, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @BIT0, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, i32* @CR88, align 4
  %22 = load i32, i32* @VIACR, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BIT4, align 4
  %27 = load i32, i32* @BIT0, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @viafb_write_reg_mask(i32 %21, i32 %22, i32 %25, i32 %28)
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

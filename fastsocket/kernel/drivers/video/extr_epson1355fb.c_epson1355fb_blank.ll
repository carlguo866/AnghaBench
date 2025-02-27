; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_epson1355fb.c_epson1355fb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_epson1355fb.c_epson1355fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.epson1355_par* }
%struct.epson1355_par = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @epson1355fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epson1355fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.epson1355_par*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.epson1355_par*, %struct.epson1355_par** %8, align 8
  store %struct.epson1355_par* %9, %struct.epson1355_par** %6, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 131, label %11
    i32 128, label %15
    i32 132, label %15
    i32 130, label %17
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.epson1355_par*, %struct.epson1355_par** %6, align 8
  %13 = call i32 @lcd_enable(%struct.epson1355_par* %12, i32 1)
  %14 = call i32 @backlight_enable(i32 1)
  br label %24

15:                                               ; preds = %2, %2
  %16 = call i32 @backlight_enable(i32 0)
  br label %24

17:                                               ; preds = %2
  %18 = call i32 @backlight_enable(i32 0)
  %19 = load %struct.epson1355_par*, %struct.epson1355_par** %6, align 8
  %20 = call i32 @lcd_enable(%struct.epson1355_par* %19, i32 0)
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %17, %15, %11
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 131
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @lcd_enable(%struct.epson1355_par*, i32) #1

declare dso_local i32 @backlight_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_setgain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setgain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 64
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %17, 2
  %19 = or i32 %18, 64
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  br label %32

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = sdiv i32 %25, 4
  %27 = or i32 %26, 192
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %24, %16
  br label %33

33:                                               ; preds = %32, %7
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = call i32 @reg_w_buf(%struct.gspca_dev* %38, i32 33589, i32 2)
  ret void
}

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@Rev012A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.sd*, %struct.sd** %5, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @Rev012A, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 34320, i32* %6, align 4
  br label %16

15:                                               ; preds = %2
  store i32 34321, i32* %6, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @reg_w_val(%struct.gspca_dev* %17, i32 %19, i32 %20)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @reg_w_val(%struct.gspca_dev* %22, i32 %24, i32 %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 2
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @reg_w_val(%struct.gspca_dev* %27, i32 %29, i32 %30)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 3
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @reg_w_val(%struct.gspca_dev* %32, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

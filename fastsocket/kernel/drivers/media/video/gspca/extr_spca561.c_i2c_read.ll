; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32)* @i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 60, i32* %8, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @reg_w_val(i32 %12, i32 34820, i32 146)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @reg_w_val(i32 %16, i32 34817, i32 %17)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, 1
  %24 = call i32 @reg_w_val(i32 %21, i32 34818, i32 %23)
  br label %25

25:                                               ; preds = %54, %3
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %27 = call i32 @reg_r(%struct.gspca_dev* %26, i32 34819, i32 1)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %25
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %36 = call i32 @reg_r(%struct.gspca_dev* %35, i32 34816, i32 1)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %43 = call i32 @reg_r(%struct.gspca_dev* %42, i32 34821, i32 1)
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 %44, 8
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %45, %50
  store i32 %51, i32* %4, align 4
  br label %59

52:                                               ; preds = %25
  %53 = call i32 @msleep(i32 10)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %25, label %58

58:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @reg_w_val(i32, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

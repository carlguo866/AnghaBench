; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@FIRST_PACKET = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 90
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %56

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 216
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @FIRST_PACKET, align 4
  store i32 %28, i32* %7, align 4
  br label %50

29:                                               ; preds = %22, %13
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 217
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @LAST_PACKET, align 4
  store i32 %46, i32* %7, align 4
  br label %49

47:                                               ; preds = %37, %29
  %48 = load i32, i32* @INTER_PACKET, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @gspca_frame_add(%struct.gspca_dev* %51, i32 %52, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %12
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

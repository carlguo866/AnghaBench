; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mr97310a.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@pac_sof_marker = common dso_local global i8* null, align 8
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i8*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %7, align 8
  %12 = load %struct.sd*, %struct.sd** %7, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @pac_find_sof(i32* %13, i8* %14, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %27, 8
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  br label %35

34:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %37 = load i32, i32* @LAST_PACKET, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @gspca_frame_add(%struct.gspca_dev* %36, i32 %37, i8* %38, i32 %39)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %42 = load i32, i32* @FIRST_PACKET, align 4
  %43 = load i8*, i8** @pac_sof_marker, align 8
  %44 = call i32 @gspca_frame_add(%struct.gspca_dev* %41, i32 %42, i8* %43, i32 8)
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %35, %3
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %57 = load i32, i32* @INTER_PACKET, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @gspca_frame_add(%struct.gspca_dev* %56, i32 %57, i8* %58, i32 %59)
  ret void
}

declare dso_local i8* @pac_find_sof(i32*, i8*, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

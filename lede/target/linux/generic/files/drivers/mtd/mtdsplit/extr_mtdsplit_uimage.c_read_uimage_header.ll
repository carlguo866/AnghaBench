; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_uimage.c_read_uimage_header.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_uimage.c_read_uimage_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"read error in \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"short read in \22%s\22\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i32*, i64)* @read_uimage_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_uimage_header(%struct.mtd_info* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @mtd_read(%struct.mtd_info* %12, i64 %13, i64 %14, i64* %10, i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %37

25:                                               ; preds = %4
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %29, %19
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i64, i64*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

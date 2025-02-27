; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_squashfs.c_mtdsplit_parse_squashfs.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_squashfs.c_mtdsplit_parse_squashfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_partition = type { i64, i32, i32 }
%struct.mtd_part_parser_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unable to allocate memory for \22%s\22 partition\0A\00", align 1
@ROOTFS_SPLIT_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @mtdsplit_parse_squashfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdsplit_parse_squashfs(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.mtd_partition*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = call i32 @mtd_get_squashfs_len(%struct.mtd_info* %13, i32 0, i64* %11)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %21 = call %struct.mtd_info* @mtdpart_get_master(%struct.mtd_info* %20)
  store %struct.mtd_info* %21, %struct.mtd_info** %9, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %23 = call i64 @mtdpart_get_offset(%struct.mtd_info* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mtd_partition* @kzalloc(i32 16, i32 %24)
  store %struct.mtd_partition* %25, %struct.mtd_partition** %8, align 8
  %26 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %27 = icmp ne %struct.mtd_partition* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ROOTFS_SPLIT_NAME, align 4
  %30 = call i32 @pr_alert(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %59

33:                                               ; preds = %19
  %34 = load i32, i32* @ROOTFS_SPLIT_NAME, align 4
  %35 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %36 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %41 = call i64 @mtd_roundup_to_eb(i64 %39, %struct.mtd_info* %40)
  %42 = load i64, i64* %10, align 8
  %43 = sub i64 %41, %42
  %44 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %45 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %50 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %54 = call i32 @mtd_rounddown_to_eb(i64 %52, %struct.mtd_info* %53)
  %55 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %56 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %58 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %57, %struct.mtd_partition** %58, align 8
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %33, %28, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mtd_get_squashfs_len(%struct.mtd_info*, i32, i64*) #1

declare dso_local %struct.mtd_info* @mtdpart_get_master(%struct.mtd_info*) #1

declare dso_local i64 @mtdpart_get_offset(%struct.mtd_info*) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_alert(i8*, i32) #1

declare dso_local i64 @mtd_roundup_to_eb(i64, %struct.mtd_info*) #1

declare dso_local i32 @mtd_rounddown_to_eb(i64, %struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_setup_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_setup_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"qps\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@qp_debugfs_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stags\00", align 1
@stag_debugfs_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_debugfs_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@ep_debugfs_fops = common dso_local global i32 0, align 4
@c4iw_wr_log = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"wr_log\00", align 1
@wr_log_debugfs_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_dev*)* @setup_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_debugfs(%struct.c4iw_dev* %0) #0 {
  %2 = alloca %struct.c4iw_dev*, align 8
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %2, align 8
  %3 = load i32, i32* @S_IWUSR, align 4
  %4 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %5 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %8 = bitcast %struct.c4iw_dev* %7 to i8*
  %9 = call i32 @debugfs_create_file_size(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %6, i8* %8, i32* @qp_debugfs_fops, i32 4096)
  %10 = load i32, i32* @S_IWUSR, align 4
  %11 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %12 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %15 = bitcast %struct.c4iw_dev* %14 to i8*
  %16 = call i32 @debugfs_create_file_size(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13, i8* %15, i32* @stag_debugfs_fops, i32 4096)
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %19 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %22 = bitcast %struct.c4iw_dev* %21 to i8*
  %23 = call i32 @debugfs_create_file_size(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %20, i8* %22, i32* @stats_debugfs_fops, i32 4096)
  %24 = load i32, i32* @S_IWUSR, align 4
  %25 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %26 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %29 = bitcast %struct.c4iw_dev* %28 to i8*
  %30 = call i32 @debugfs_create_file_size(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %27, i8* %29, i32* @ep_debugfs_fops, i32 4096)
  %31 = load i64, i64* @c4iw_wr_log, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load i32, i32* @S_IWUSR, align 4
  %35 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %36 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.c4iw_dev*, %struct.c4iw_dev** %2, align 8
  %39 = bitcast %struct.c4iw_dev* %38 to i8*
  %40 = call i32 @debugfs_create_file_size(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %34, i32 %37, i8* %39, i32* @wr_log_debugfs_fops, i32 4096)
  br label %41

41:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @debugfs_create_file_size(i8*, i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

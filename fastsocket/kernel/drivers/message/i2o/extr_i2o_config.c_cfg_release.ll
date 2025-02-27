; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_config.c_cfg_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_config.c_cfg_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_cfg_info = type { i64, %struct.i2o_cfg_info* }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@i2o_config_lock = common dso_local global i32 0, align 4
@open_files = common dso_local global %struct.i2o_cfg_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cfg_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2o_cfg_info*, align 8
  %7 = alloca %struct.i2o_cfg_info**, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = call i32 (...) @lock_kernel()
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @i2o_config_lock, i64 %14)
  store %struct.i2o_cfg_info** @open_files, %struct.i2o_cfg_info*** %7, align 8
  br label %16

16:                                               ; preds = %34, %2
  %17 = load %struct.i2o_cfg_info**, %struct.i2o_cfg_info*** %7, align 8
  %18 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %17, align 8
  store %struct.i2o_cfg_info* %18, %struct.i2o_cfg_info** %6, align 8
  %19 = icmp ne %struct.i2o_cfg_info* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %22 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %28 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %27, i32 0, i32 1
  %29 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %28, align 8
  %30 = load %struct.i2o_cfg_info**, %struct.i2o_cfg_info*** %7, align 8
  store %struct.i2o_cfg_info* %29, %struct.i2o_cfg_info** %30, align 8
  %31 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %32 = call i32 @kfree(%struct.i2o_cfg_info* %31)
  br label %37

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.i2o_cfg_info*, %struct.i2o_cfg_info** %6, align 8
  %36 = getelementptr inbounds %struct.i2o_cfg_info, %struct.i2o_cfg_info* %35, i32 0, i32 1
  store %struct.i2o_cfg_info** %36, %struct.i2o_cfg_info*** %7, align 8
  br label %16

37:                                               ; preds = %26, %16
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @i2o_config_lock, i64 %38)
  %40 = call i32 (...) @unlock_kernel()
  ret i32 0
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(%struct.i2o_cfg_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

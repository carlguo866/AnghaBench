; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_reserve_metadata_snap_mesg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_reserve_metadata_snap_mesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"reserve_metadata_snap message failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.pool*)* @process_reserve_metadata_snap_mesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_reserve_metadata_snap_mesg(i32 %0, i8** %1, %struct.pool* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.pool*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.pool* %2, %struct.pool** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @check_arg_count(i32 %9, i32 1)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load %struct.pool*, %struct.pool** %7, align 8
  %17 = call i32 @commit(%struct.pool* %16)
  %18 = load %struct.pool*, %struct.pool** %7, align 8
  %19 = getelementptr inbounds %struct.pool, %struct.pool* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_pool_reserve_metadata_snap(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = call i32 @DMWARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %15
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @check_arg_count(i32, i32) #1

declare dso_local i32 @commit(%struct.pool*) #1

declare dso_local i32 @dm_pool_reserve_metadata_snap(i32) #1

declare dso_local i32 @DMWARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

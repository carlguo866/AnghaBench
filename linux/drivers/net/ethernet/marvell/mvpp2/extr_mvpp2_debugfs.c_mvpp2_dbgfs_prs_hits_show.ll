; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_prs_hits_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_prs_hits_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mvpp2_dbgfs_prs_entry* }
%struct.mvpp2_dbgfs_prs_entry = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvpp2_dbgfs_prs_hits_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_prs_hits_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mvpp2_dbgfs_prs_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %9, align 8
  store %struct.mvpp2_dbgfs_prs_entry* %10, %struct.mvpp2_dbgfs_prs_entry** %6, align 8
  %11 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %6, align 8
  %12 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, %struct.mvpp2_dbgfs_prs_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %6, align 8
  %15 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, %struct.mvpp2_dbgfs_prs_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mvpp2_prs_hits(i32 %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @mvpp2_prs_hits(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

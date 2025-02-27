; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.h_xfs_trans_get_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.h_xfs_trans_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buftarg = type { i32 }

@map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_buf* (%struct.xfs_trans*, %struct.xfs_buftarg*, i32, i32, i32)* @xfs_trans_get_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_buf* @xfs_trans_get_buf(%struct.xfs_trans* %0, %struct.xfs_buftarg* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca %struct.xfs_buftarg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %6, align 8
  store %struct.xfs_buftarg* %1, %struct.xfs_buftarg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @map, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @DEFINE_SINGLE_BUF_MAP(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %16 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.xfs_buf* @xfs_trans_get_buf_map(%struct.xfs_trans* %15, %struct.xfs_buftarg* %16, i32* @map, i32 1, i32 %17)
  ret %struct.xfs_buf* %18
}

declare dso_local i32 @DEFINE_SINGLE_BUF_MAP(i32, i32, i32) #1

declare dso_local %struct.xfs_buf* @xfs_trans_get_buf_map(%struct.xfs_trans*, %struct.xfs_buftarg*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

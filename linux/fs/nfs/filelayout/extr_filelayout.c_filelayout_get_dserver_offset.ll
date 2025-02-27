; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_get_dserver_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_get_dserver_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32 }
%struct.nfs4_filelayout_segment = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_segment*, i32)* @filelayout_get_dserver_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filelayout_get_dserver_offset(%struct.pnfs_layout_segment* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs4_filelayout_segment*, align 8
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %8 = call %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment* %7)
  store %struct.nfs4_filelayout_segment* %8, %struct.nfs4_filelayout_segment** %6, align 8
  %9 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %6, align 8
  %10 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 128, label %12
    i32 129, label %14
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @filelayout_get_dense_offset(%struct.nfs4_filelayout_segment* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %18, %14, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @filelayout_get_dense_offset(%struct.nfs4_filelayout_segment*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

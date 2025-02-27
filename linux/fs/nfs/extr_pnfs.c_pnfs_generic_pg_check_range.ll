; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_check_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_check_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32* }
%struct.nfs_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* @pnfs_generic_pg_check_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_generic_pg_check_range(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  %5 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %14 = call i32 @pnfs_lseg_request_intersecting(i32* %12, %struct.nfs_page* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @pnfs_put_lseg(i32* %19)
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %16, %9, %2
  ret void
}

declare dso_local i32 @pnfs_lseg_request_intersecting(i32*, %struct.nfs_page*) #1

declare dso_local i32 @pnfs_put_lseg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

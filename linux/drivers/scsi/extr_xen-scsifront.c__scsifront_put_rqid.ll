; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c__scsifront_put_rqid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c__scsifront_put_rqid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsifrnt_info = type { i64, i32**, i32 }

@VSCSIIF_MAX_REQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vscsifrnt_info*, i64)* @_scsifront_put_rqid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsifront_put_rqid(%struct.vscsifrnt_info* %0, i64 %1) #0 {
  %3 = alloca %struct.vscsifrnt_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vscsifrnt_info* %0, %struct.vscsifrnt_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %7 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VSCSIIF_MAX_REQS, align 4
  %10 = call i32 @bitmap_empty(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %13 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @__set_bit(i64 %11, i32 %14)
  %16 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %17 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %25 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i1 [ true, %2 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

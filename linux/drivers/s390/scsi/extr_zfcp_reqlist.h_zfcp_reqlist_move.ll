; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_reqlist.h_zfcp_reqlist_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_reqlist.h_zfcp_reqlist_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_reqlist = type { i32, i32* }
%struct.list_head = type { i32 }

@ZFCP_REQ_LIST_BUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_reqlist*, %struct.list_head*)* @zfcp_reqlist_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_reqlist_move(%struct.zfcp_reqlist* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.zfcp_reqlist*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.zfcp_reqlist* %0, %struct.zfcp_reqlist** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.zfcp_reqlist*, %struct.zfcp_reqlist** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_reqlist, %struct.zfcp_reqlist* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ZFCP_REQ_LIST_BUCKETS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.zfcp_reqlist*, %struct.zfcp_reqlist** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_reqlist, %struct.zfcp_reqlist* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load %struct.list_head*, %struct.list_head** %4, align 8
  %23 = call i32 @list_splice_init(i32* %21, %struct.list_head* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.zfcp_reqlist*, %struct.zfcp_reqlist** %3, align 8
  %29 = getelementptr inbounds %struct.zfcp_reqlist, %struct.zfcp_reqlist* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_debug_memclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_debug_memclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i64 }

@BNA_DBG_FWTRC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_debug_memclaim(%struct.bfa_ioc* %0, i8* %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i8*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %6, i32 0, i32 2
  store i8* %5, i8** %7, align 8
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @BNA_DBG_FWTRC_LEN, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

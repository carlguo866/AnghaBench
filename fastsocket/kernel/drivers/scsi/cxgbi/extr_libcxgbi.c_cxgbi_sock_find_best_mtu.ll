; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_find_best_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_find_best_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*, i16)* @cxgbi_sock_find_best_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbi_sock_find_best_mtu(%struct.cxgbi_sock* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %6
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i16*, i16** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %20, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %4, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp sle i32 %26, %28
  br label %30

30:                                               ; preds = %15, %6
  %31 = phi i1 [ false, %6 ], [ %29, %15 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

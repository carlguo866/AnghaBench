; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_msi_peer_desc_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_msi_peer_desc_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Peer MSI descriptors changed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_ctx*)* @ntb_transport_msi_peer_desc_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_msi_peer_desc_changed(%struct.ntb_transport_ctx* %0) #0 {
  %2 = alloca %struct.ntb_transport_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %2, align 8
  %4 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %21, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ntb_transport_setup_qp_peer_msi(%struct.ntb_transport_ctx* %18, i32 %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %11

24:                                               ; preds = %11
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ntb_transport_setup_qp_peer_msi(%struct.ntb_transport_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

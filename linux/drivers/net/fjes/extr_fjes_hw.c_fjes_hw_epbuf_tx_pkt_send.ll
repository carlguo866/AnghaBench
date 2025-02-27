; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_epbuf_tx_pkt_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_epbuf_tx_pkt_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epbuf_handler = type { %union.ep_buffer_info*, i32* }
%union.ep_buffer_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i32 }
%struct.esmem_frame = type { i64, i64 }

@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_epbuf_tx_pkt_send(%struct.epbuf_handler* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.epbuf_handler*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.ep_buffer_info*, align 8
  %9 = alloca %struct.esmem_frame*, align 8
  store %struct.epbuf_handler* %0, %struct.epbuf_handler** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.epbuf_handler*, %struct.epbuf_handler** %5, align 8
  %11 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %10, i32 0, i32 0
  %12 = load %union.ep_buffer_info*, %union.ep_buffer_info** %11, align 8
  store %union.ep_buffer_info* %12, %union.ep_buffer_info** %8, align 8
  %13 = load %union.ep_buffer_info*, %union.ep_buffer_info** %8, align 8
  %14 = bitcast %union.ep_buffer_info* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %union.ep_buffer_info*, %union.ep_buffer_info** %8, align 8
  %18 = bitcast %union.ep_buffer_info* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %union.ep_buffer_info*, %union.ep_buffer_info** %8, align 8
  %22 = bitcast %union.ep_buffer_info* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @EP_RING_FULL(i32 %16, i64 %20, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOBUFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %72

30:                                               ; preds = %3
  %31 = load %struct.epbuf_handler*, %struct.epbuf_handler** %5, align 8
  %32 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %union.ep_buffer_info*, %union.ep_buffer_info** %8, align 8
  %35 = bitcast %union.ep_buffer_info* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 1
  %39 = load %union.ep_buffer_info*, %union.ep_buffer_info** %8, align 8
  %40 = bitcast %union.ep_buffer_info* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @EP_RING_INDEX(i64 %38, i32 %42)
  %44 = load %union.ep_buffer_info*, %union.ep_buffer_info** %8, align 8
  %45 = bitcast %union.ep_buffer_info* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = mul i64 %43, %47
  %49 = getelementptr inbounds i32, i32* %33, i64 %48
  %50 = bitcast i32* %49 to %struct.esmem_frame*
  store %struct.esmem_frame* %50, %struct.esmem_frame** %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.esmem_frame*, %struct.esmem_frame** %9, align 8
  %53 = getelementptr inbounds %struct.esmem_frame, %struct.esmem_frame* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.esmem_frame*, %struct.esmem_frame** %9, align 8
  %55 = getelementptr inbounds %struct.esmem_frame, %struct.esmem_frame* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  %61 = load %struct.epbuf_handler*, %struct.epbuf_handler** %5, align 8
  %62 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %61, i32 0, i32 0
  %63 = load %union.ep_buffer_info*, %union.ep_buffer_info** %62, align 8
  %64 = bitcast %union.ep_buffer_info* %63 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %union.ep_buffer_info*, %union.ep_buffer_info** %8, align 8
  %68 = bitcast %union.ep_buffer_info* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @EP_RING_INDEX_INC(i64 %66, i32 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %30, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @EP_RING_FULL(i32, i64, i32) #1

declare dso_local i64 @EP_RING_INDEX(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @EP_RING_INDEX_INC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

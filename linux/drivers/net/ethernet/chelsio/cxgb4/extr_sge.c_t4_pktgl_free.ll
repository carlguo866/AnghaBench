; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_t4_pktgl_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_t4_pktgl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_gl = type { i32, %struct.page_frag* }
%struct.page_frag = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt_gl*)* @t4_pktgl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_pktgl_free(%struct.pkt_gl* %0) #0 {
  %2 = alloca %struct.pkt_gl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page_frag*, align 8
  store %struct.pkt_gl* %0, %struct.pkt_gl** %2, align 8
  %5 = load %struct.pkt_gl*, %struct.pkt_gl** %2, align 8
  %6 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %5, i32 0, i32 1
  %7 = load %struct.page_frag*, %struct.page_frag** %6, align 8
  store %struct.page_frag* %7, %struct.page_frag** %4, align 8
  %8 = load %struct.pkt_gl*, %struct.pkt_gl** %2, align 8
  %9 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.page_frag*, %struct.page_frag** %4, align 8
  %18 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @put_page(i32 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load %struct.page_frag*, %struct.page_frag** %4, align 8
  %23 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %22, i32 1
  store %struct.page_frag* %23, %struct.page_frag** %4, align 8
  br label %12

24:                                               ; preds = %12
  ret void
}

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

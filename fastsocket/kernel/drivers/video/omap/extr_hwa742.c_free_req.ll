; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_free_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_free_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hwa742_request = type { i32, i32 }

@hwa742 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@REQ_FROM_IRQ_POOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwa742_request*)* @free_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_req(%struct.hwa742_request* %0) #0 {
  %2 = alloca %struct.hwa742_request*, align 8
  %3 = alloca i64, align 8
  store %struct.hwa742_request* %0, %struct.hwa742_request** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwa742, i32 0, i32 0), i64 %4)
  %6 = load %struct.hwa742_request*, %struct.hwa742_request** %2, align 8
  %7 = getelementptr inbounds %struct.hwa742_request, %struct.hwa742_request* %6, i32 0, i32 1
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.hwa742_request*, %struct.hwa742_request** %2, align 8
  %10 = getelementptr inbounds %struct.hwa742_request, %struct.hwa742_request* %9, i32 0, i32 1
  %11 = call i32 @list_add(i32* %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwa742, i32 0, i32 2))
  %12 = load %struct.hwa742_request*, %struct.hwa742_request** %2, align 8
  %13 = getelementptr inbounds %struct.hwa742_request, %struct.hwa742_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REQ_FROM_IRQ_POOL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 @up(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwa742, i32 0, i32 1))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwa742, i32 0, i32 0), i64 %21)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

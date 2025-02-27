; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_TEIrelease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_TEIrelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { %struct.teimgr*, i32 }
%struct.teimgr = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TEIrelease(%struct.layer2* %0) #0 {
  %2 = alloca %struct.layer2*, align 8
  %3 = alloca %struct.teimgr*, align 8
  %4 = alloca i32, align 4
  store %struct.layer2* %0, %struct.layer2** %2, align 8
  %5 = load %struct.layer2*, %struct.layer2** %2, align 8
  %6 = getelementptr inbounds %struct.layer2, %struct.layer2* %5, i32 0, i32 0
  %7 = load %struct.teimgr*, %struct.teimgr** %6, align 8
  store %struct.teimgr* %7, %struct.teimgr** %3, align 8
  %8 = load %struct.teimgr*, %struct.teimgr** %3, align 8
  %9 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %8, i32 0, i32 1
  %10 = call i32 @mISDN_FsmDelTimer(i32* %9, i32 1)
  %11 = load %struct.teimgr*, %struct.teimgr** %3, align 8
  %12 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @write_lock_irqsave(i32* %14, i32 %15)
  %17 = load %struct.layer2*, %struct.layer2** %2, align 8
  %18 = getelementptr inbounds %struct.layer2, %struct.layer2* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.teimgr*, %struct.teimgr** %3, align 8
  %21 = getelementptr inbounds %struct.teimgr, %struct.teimgr* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @write_unlock_irqrestore(i32* %23, i32 %24)
  %26 = load %struct.layer2*, %struct.layer2** %2, align 8
  %27 = getelementptr inbounds %struct.layer2, %struct.layer2* %26, i32 0, i32 0
  store %struct.teimgr* null, %struct.teimgr** %27, align 8
  %28 = load %struct.teimgr*, %struct.teimgr** %3, align 8
  %29 = call i32 @kfree(%struct.teimgr* %28)
  ret void
}

declare dso_local i32 @mISDN_FsmDelTimer(i32*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @kfree(%struct.teimgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

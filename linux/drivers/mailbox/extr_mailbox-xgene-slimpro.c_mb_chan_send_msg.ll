; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_mb_chan_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-xgene-slimpro.c_mb_chan_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slimpro_mbox_chan = type { i64 }

@REG_DB_DOUT0 = common dso_local global i64 0, align 8
@REG_DB_DOUT1 = common dso_local global i64 0, align 8
@REG_DB_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slimpro_mbox_chan*, i32*)* @mb_chan_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb_chan_send_msg(%struct.slimpro_mbox_chan* %0, i32* %1) #0 {
  %3 = alloca %struct.slimpro_mbox_chan*, align 8
  %4 = alloca i32*, align 8
  store %struct.slimpro_mbox_chan* %0, %struct.slimpro_mbox_chan** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %9 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REG_DB_DOUT0, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %18 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_DB_DOUT1, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.slimpro_mbox_chan*, %struct.slimpro_mbox_chan** %3, align 8
  %27 = getelementptr inbounds %struct.slimpro_mbox_chan, %struct.slimpro_mbox_chan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REG_DB_OUT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

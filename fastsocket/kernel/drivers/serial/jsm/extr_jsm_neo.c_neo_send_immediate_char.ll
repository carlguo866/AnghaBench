; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_send_immediate_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_send_immediate_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*, i8)* @neo_send_immediate_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_send_immediate_char(%struct.jsm_channel* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.jsm_channel*, align 8
  %4 = alloca i8, align 1
  store %struct.jsm_channel* %0, %struct.jsm_channel** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %6 = icmp ne %struct.jsm_channel* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %19

8:                                                ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %11 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @writeb(i8 zeroext %9, i32* %13)
  %15 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %16 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @neo_pci_posting_flush(i32 %17)
  br label %19

19:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

declare dso_local i32 @neo_pci_posting_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

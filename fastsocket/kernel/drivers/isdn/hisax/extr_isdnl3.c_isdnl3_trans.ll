; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_isdnl3_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_isdnl3_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, i8*)* }
%struct.PStack.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32, i8*)* @isdnl3_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isdnl3_trans(%struct.PStack* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.PStack*, %struct.PStack** %4, align 8
  %8 = getelementptr inbounds %struct.PStack, %struct.PStack* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.PStack.0*, i32, i8*)*, i32 (%struct.PStack.0*, i32, i8*)** %9, align 8
  %11 = load %struct.PStack*, %struct.PStack** %4, align 8
  %12 = bitcast %struct.PStack* %11 to %struct.PStack.0*
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 %10(%struct.PStack.0* %12, i32 %13, i8* %14)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_DiseqcSendBit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget.c_DiseqcSendBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.budget*, i32)* @DiseqcSendBit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DiseqcSendBit(%struct.budget* %0, i32 %1) #0 {
  %3 = alloca %struct.budget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7146_dev*, align 8
  store %struct.budget* %0, %struct.budget** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.budget*, %struct.budget** %3, align 8
  %7 = getelementptr inbounds %struct.budget, %struct.budget* %6, i32 0, i32 0
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  store %struct.saa7146_dev* %8, %struct.saa7146_dev** %5, align 8
  %9 = load %struct.budget*, %struct.budget** %3, align 8
  %10 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.budget* %9)
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %12 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %13 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %11, i32 3, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 500, i32 1000
  %18 = call i32 @udelay(i32 %17)
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %20 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %21 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %19, i32 3, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1000, i32 500
  %26 = call i32 @udelay(i32 %25)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, %struct.budget*) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

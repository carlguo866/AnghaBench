; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_setsda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_setsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dm1105_dev = type { i64 }

@dm1105_boards = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dm1105_setsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm1105_setsda(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm1105_dev*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.dm1105_dev*
  store %struct.dm1105_dev* %7, %struct.dm1105_dev** %5, align 8
  %8 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dm1105_boards, align 8
  %10 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %11 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dm1105_setline(%struct.dm1105_dev* %8, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @dm1105_setline(%struct.dm1105_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

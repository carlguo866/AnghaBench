; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_udbg_16550.c_udbg_550_getc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_udbg_16550.c_udbg_550_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@udbg_comport = common dso_local global %struct.TYPE_2__* null, align 8
@LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udbg_550_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udbg_550_getc() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udbg_comport, align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %12, %4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udbg_comport, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i32 @in_8(i32* %7)
  %9 = load i32, i32* @LSR_DR, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %5

13:                                               ; preds = %5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udbg_comport, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @in_8(i32* %15)
  store i32 %16, i32* %1, align 4
  br label %18

17:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @in_8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

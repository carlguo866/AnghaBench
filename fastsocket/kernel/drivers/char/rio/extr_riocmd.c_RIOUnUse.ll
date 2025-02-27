; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOUnUse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOUnUse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CmdBlk = type { i32 }
%struct.Port = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RIO_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Decrement in use count for port\0A\00", align 1
@NOT_INUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOUnUse(i64 %0, %struct.CmdBlk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.CmdBlk*, align 8
  %6 = alloca %struct.Port*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.CmdBlk* %1, %struct.CmdBlk** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to %struct.Port*
  store %struct.Port* %9, %struct.Port** %6, align 8
  %10 = load %struct.Port*, %struct.Port** %6, align 8
  %11 = getelementptr inbounds %struct.Port, %struct.Port* %10, i32 0, i32 1
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @rio_spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %15 = call i32 @rio_dprintk(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.Port*, %struct.Port** %6, align 8
  %17 = getelementptr inbounds %struct.Port, %struct.Port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.Port*, %struct.Port** %6, align 8
  %22 = getelementptr inbounds %struct.Port, %struct.Port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load i64, i64* @NOT_INUSE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.Port*, %struct.Port** %6, align 8
  %29 = getelementptr inbounds %struct.Port, %struct.Port* %28, i32 0, i32 1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @rio_spin_unlock_irqrestore(i32* %29, i64 %30)
  store i32 0, i32* %3, align 4
  br label %45

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.Port*, %struct.Port** %6, align 8
  %35 = getelementptr inbounds %struct.Port, %struct.Port* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @writew(i32 1, i32* %39)
  %41 = load %struct.Port*, %struct.Port** %6, align 8
  %42 = getelementptr inbounds %struct.Port, %struct.Port* %41, i32 0, i32 1
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @rio_spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %27
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @rio_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rio_dprintk(i32, i8*) #1

declare dso_local i32 @rio_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writew(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

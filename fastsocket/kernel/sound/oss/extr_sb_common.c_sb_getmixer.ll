; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_common.c_sb_getmixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_common.c_sb_getmixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@MDL_ESS = common dso_local global i64 0, align 8
@MIXER_ADDR = common dso_local global i32 0, align 4
@MIXER_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sb_getmixer(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MDL_ESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ess_getmixer(%struct.TYPE_4__* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  %25 = load i32, i32* @MIXER_ADDR, align 4
  %26 = call i32 @outb(i8 zeroext %24, i32 %25)
  %27 = call i32 @udelay(i32 20)
  %28 = load i32, i32* @MIXER_DATA, align 4
  %29 = call i32 @inb(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = call i32 @udelay(i32 20)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %17, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ess_getmixer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

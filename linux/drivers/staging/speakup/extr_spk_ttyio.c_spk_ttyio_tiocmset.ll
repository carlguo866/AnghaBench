; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, i32)* }

@speakup_tty_mutex = common dso_local global i32 0, align 4
@speakup_tty = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @spk_ttyio_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spk_ttyio_tiocmset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @speakup_tty_mutex)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speakup_tty, align 8
  %7 = call i64 @check_tty(%struct.TYPE_6__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @mutex_unlock(i32* @speakup_tty_mutex)
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speakup_tty, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_6__*, i32, i32)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speakup_tty, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @speakup_tty, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 %23(%struct.TYPE_6__* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %11
  %29 = call i32 @mutex_unlock(i32* @speakup_tty_mutex)
  br label %30

30:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @check_tty(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

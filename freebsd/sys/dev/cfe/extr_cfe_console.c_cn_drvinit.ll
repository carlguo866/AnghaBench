; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfe/extr_cfe_console.c_cn_drvinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfe/extr_cfe_console.c_cn_drvinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }
%struct.tty = type { i32 }

@cfe_consdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CN_DEAD = common dso_local global i64 0, align 8
@cfe_ttydevsw = common dso_local global i32 0, align 4
@cfe_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cfecons\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cn_drvinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_drvinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tty*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfe_consdev, i32 0, i32 0), align 8
  %5 = load i64, i64* @CN_DEAD, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfe_consdev, i32 0, i32 1), align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = call %struct.tty* @tty_alloc(i32* @cfe_ttydevsw, i32* null)
  store %struct.tty* %14, %struct.tty** %3, align 8
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = call i32 @tty_getlock(%struct.tty* %15)
  %17 = call i32 @callout_init_mtx(i32* @cfe_timer, i32 %16, i32 0)
  %18 = load %struct.tty*, %struct.tty** %3, align 8
  %19 = call i32 @tty_makedev(%struct.tty* %18, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %13, %7, %1
  ret void
}

declare dso_local %struct.tty* @tty_alloc(i32*, i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32, i32) #1

declare dso_local i32 @tty_getlock(%struct.tty*) #1

declare dso_local i32 @tty_makedev(%struct.tty*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

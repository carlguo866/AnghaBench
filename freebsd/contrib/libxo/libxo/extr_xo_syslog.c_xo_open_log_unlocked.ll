; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_syslog.c_xo_open_log_unlocked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_xo_syslog.c_xo_open_log_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xo_logtag = common dso_local global i8* null, align 8
@xo_logstat = common dso_local global i32 0, align 4
@LOG_FACMASK = common dso_local global i32 0, align 4
@xo_logfacility = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@xo_opened = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @xo_open_log_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_open_log_unlocked(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** @xo_logtag, align 8
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* @xo_logstat, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LOG_FACMASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* @xo_logfacility, align 4
  br label %23

23:                                               ; preds = %21, %15, %11
  %24 = load i32, i32* @xo_logstat, align 4
  %25 = load i32, i32* @LOG_NDELAY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @xo_connect_log()
  br label %30

30:                                               ; preds = %28, %23
  store i32 1, i32* @xo_opened, align 4
  ret void
}

declare dso_local i32 @xo_connect_log(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

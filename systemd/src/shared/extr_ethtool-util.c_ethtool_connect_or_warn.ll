; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_connect_or_warn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_ethtool_connect_or_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ethtool: could not create control socket: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ethtool_connect_or_warn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethtool_connect_or_warn(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @assert_return(i32* %7, i32 %9)
  %11 = call i32 (...) @socket_ioctl_fd()
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @LOG_WARNING, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @LOG_DEBUG, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @log_full_errno(i32 %22, i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @assert_return(i32*, i32) #1

declare dso_local i32 @socket_ioctl_fd(...) #1

declare dso_local i32 @log_full_errno(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
